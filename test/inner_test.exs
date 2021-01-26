defmodule InnerTest do
  use ExUnit.Case
  doctest Luhn.Algo
  alias Luhn.Algo

  test "Make sure check function works on number above 10 =" do
    assert Algo.pass_to_check(6) == 3
  end

  test "Assure x * 2 less than 10 returns value * 2" do
    assert Algo.pass_to_check(3) == 6
  end

  test "random_gen returns valid luhn number" do
    7
    |> Algo.random_gen()
    |> Algo.valid?()
  end

  test "valid functionality works for lists" do
    assert [true, true] = Algo.valid?([12_345_674, 8_472_895_310])
  end
end
