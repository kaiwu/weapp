import gleam/javascript.{type_of}
import gleam/result
import gleeunit/should
import wechat/object.{WechatError}

pub fn new_test() {
  object.new()
  |> type_of
  |> should.equal(javascript.ObjectType)

  let f = fn(x) { x + 1 }

  object.literal([#("a", f)])
  |> object.path("a")
  |> result.map(type_of)
  |> should.equal(Ok(javascript.FunctionType))

  let b = object.literal([#("a", f)])
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
