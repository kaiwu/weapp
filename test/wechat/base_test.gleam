import wechat/base
import gleeunit/should
import gleam/io

pub fn payment_test() {
  base.to_payment("2.9")
  |> should.equal(290)

  base.to_payment("200.923")
  |> should.equal(20092)

  base.to_payment("0.90")
  |> should.equal(90)

  base.to_payment("1.09")
  |> should.equal(109)
}

pub fn date_test() {
  base.now()
  |> base.ymd
  |> io.println
}
