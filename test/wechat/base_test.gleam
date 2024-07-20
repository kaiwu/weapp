import gleam/io
import gleam/javascript/promise
import gleam/result
import gleeunit/should
import wechat/base
import wechat/object

pub fn payment_test() {
  base.to_payment("2.9")
  |> should.equal(290)

  base.to_payment("200.923")
  |> should.equal(20_092)

  base.to_payment("0.90")
  |> should.equal(90)

  base.to_payment("1.09")
  |> should.equal(109)
}

pub fn date_test() {
  let d = base.now()
  use ymd <- promise.await(base.ymd(d))
  ymd
  |> result.try(object.string)
  |> result.map(io.println)
  |> promise.resolve
}
