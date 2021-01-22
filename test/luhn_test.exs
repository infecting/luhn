defmodule LuhnTest do
  use ExUnit.Case
  doctest Luhn

  test "greets the world" do
    assert Luhn.hello() == :world
  end
end
