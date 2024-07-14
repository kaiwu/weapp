import wechat/object
import gleam/javascript.{type_of}
import gleeunit/should
import gleam/result

pub fn new_test() {
  object.new()
  |> type_of
  |> should.equal(javascript.ObjectType)

  object.literal([#("a", fn(x) { x + 1})])
  |> object.path("a")
  |> result.map(type_of)
  |> should.equal(Ok(javascript.FunctionType))

  let b = object.literal([#("a", fn(x) { x + 1})])
  object.literal([#("b", b)])
  |> object.paths("b.a")
  |> result.map(type_of)
  |> should.equal(Ok(javascript.FunctionType))
}

pub fn set_test() {
  object.new()
  |> object.set("a", 1)
  |> object.get("a")
  |> result.try(object.int)
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
  |> result.try(object.int)
  |> should.equal(Ok(1))
}

pub fn literal_test() {
  object.literal([])
  |> type_of
  |> should.equal(javascript.ObjectType)

  object.literal([#("a", 0), #("a", 1)])
  |> object.get("a")
  |> result.try(object.int)
  |> should.equal(Ok(1))

  object.literal([#("a", 0)])
  |> object.merge(object.literal([#("a", 1)]))
  |> object.get("a")
  |> result.try(object.int)
  |> should.equal(Ok(1))
}

