defmodule LuhnTest do
  use ExUnit.Case
  doctest Luhn

  test "luhn returns true on correct value" do
    assert Luhn.valid?(12344)
  end

  test "random gen returns valid luhn number" do
    8
    |> Luhn.random_gen()
    |> Luhn.valid?()
  end

  test "luhn valid works with lists" do
    assert [true, true] = Luhn.valid?([8_472_895_310, 1_882_057_050])
  end
end
