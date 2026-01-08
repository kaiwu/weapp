import gleam/dynamic/decode
import gleam/javascript/array
import gleam/result
import gleeunit/should
import wechat/object.{WechatError}

pub fn set_test() {
  object.new()
  |> object.set("a", 1)
  |> object.get("a")
  |> result.try(object.int)
  |> should.equal(Ok(1))

  object.new()
  |> object.set("a", 1)
  |> object.mutate("a.b", 2)
  |> object.paths("a.b")
  |> result.try(object.int)
  |> should.equal(Ok(2))

  object.new()
  |> object.set("a", array.from_list([0, 1, 2]))
  |> object.mutate("a.1", 10)
  |> object.path("a")
  |> result.try(object.list(_, decode.int))
  |> should.equal(Ok([0, 10, 2]))

  object.new()
  |> object.set("ab", 1)
  |> object.get("a" <> "b")
  |> result.is_ok
  |> should.equal(True)

  object.new()
  |> object.set("ab", 1)
  |> object.get("c")
  |> result.is_ok
  |> should.equal(False)

  object.new()
  |> object.set(0, 0)
  |> object.set(0, 1)
  |> object.get(0)
  |> result.try(object.int)
  |> should.equal(Ok(1))
}

pub fn literal_test() {
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

pub fn call_test() {
  let f = fn(x) { x + 1 }

  object.literal([#("f", f)])
  |> object.path("f")
  |> result.try(object.call(_, 1))
  |> result.try(object.int)
  |> should.equal(Ok(2))

  object.literal([#("a", 1)])
  |> object.path("a")
  |> result.try(object.call(_, 1))
  |> result.try(object.int)
  |> should.equal(Error(WechatError("not a function")))
}

pub fn field_test() {
  object.new()
  |> object.mutate("a.b", 10)
  |> object.path_field("a.b", decode.int)
  |> should.equal(Ok(10))

  object.new()
  |> object.mutate("a.b", [1, 2])
  |> object.path_field("a.b", decode.list(decode.int))
  |> should.equal(Ok([1, 2]))
}
