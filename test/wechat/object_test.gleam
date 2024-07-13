import wechat/object
import gleam/javascript.{type_of}
import gleeunit/should
import gleam/result
// import gleam/dynamic

pub fn new_test() {
  object.new()
  |> type_of
  |> should.equal(javascript.ObjectType)
}

pub fn set_test() {
  object.new()
  |> object.set("a", 1)
  |> object.get("a")
  |> result.is_ok
  |> should.equal(True)

  object.new()
  |> object.set("a", 1)
  |> object.get("b")
  |> result.is_ok
  |> should.equal(False)
}
