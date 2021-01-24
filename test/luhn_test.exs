defmodule LuhnTest do
  use ExUnit.Case
  doctest Luhn
  
  test "luhn returns true on correct value" do
    assert Luhn.valid?(12344)
  end

  test "random gen returns valid luhn number" do
    {:ok, number} = Luhn.random_gen(8)
    Luhn.valid?(number)
  end

  test "luhn valid works with lists" do
    assert [true, true] = Luhn.valid?([8472895310, 1882057050])
  end
end

