defmodule LuhnTest do
  use ExUnit.Case
  doctest Luhn
  
  test "luhn returns true on correct value" do
    assert Luhn.valid?(12344)
  end
end
