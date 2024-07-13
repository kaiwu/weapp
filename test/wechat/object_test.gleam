import wechat/object
import gleam/javascript.{type_of}
import gleeunit/should
import gleam/result
import gleam/dynamic

pub fn new_test() {
  object.new()
  |> type_of
  |> should.equal(javascript.ObjectType)
}

pub fn set_test() {
  object.new()
  |> object.set("a", 1)
  |> object.get("a")
  |> result.unwrap(dynamic.from(0))
  |> dynamic.int
  |> should.equal(Ok(1))

  object.new()
  |> object.set("ab", 1)
  |> object.get("a" <> "b")
  |> result.is_ok
  |> should.equal(True)

  object.new()
  |> object.set(0, 0)
  |> object.set(0, 1)
  |> object.get(0)
  |> result.unwrap(dynamic.from(0))
  |> dynamic.int
  |> should.equal(Ok(1))
}

pub fn literal_test() {
  object.literal([])
  |> type_of
  |> should.equal(javascript.ObjectType)

  object.literal([#("a", 0), #("a", 1)])
  |> object.get("a")
  |> result.unwrap(dynamic.from(0))
  |> dynamic.int
  |> should.equal(Ok(1))

  object.literal([#("a", 0)])
  |> object.merge(object.literal([#("a", 1)]))
  |> object.get("a")
  |> result.unwrap(dynamic.from(0))
  |> dynamic.int
  |> should.equal(Ok(1))
}

