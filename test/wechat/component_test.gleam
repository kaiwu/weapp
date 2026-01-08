import gleam/dynamic/decode
import gleam/javascript/array
import gleeunit/should
import wechat/component
import wechat/object

pub fn component_test() {
  let _ = component.run_component
  let _ = component.select_component
}

pub fn property_test() {
  component.IntProperty("k", 10)
  |> component.to_object()
  |> object.path_field("k.value", decode.int)
  |> should.equal(Ok(10))

  [
    component.IntProperty("k0", 10),
    component.StringProperty("k1", "this is k1"),
  ]
  |> component.to_properties()
  |> object.path_field("k1.value", decode.string)
  |> should.equal(Ok("this is k1"))

  component.ArrayProperty(
    "k",
    object.literal([#("values", array.from_list([1, 2, 3]))]),
  )
  |> component.to_object()
  |> object.path_field("k.value", decode.list(decode.int))
  |> should.equal(Ok([1, 2, 3]))
}
