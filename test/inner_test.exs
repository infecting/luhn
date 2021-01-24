defmodule InnerTest do
  use ExUnit.Case
  doctest Luhn.Algo
  alias Luhn.Algo

  test "Make sure check function works on number above 10 =" do
    assert Algo.worker(6) == 3
  end

  test "Assure x * 2 less than 10 returns value * 2" do
    assert Algo.worker(3) == 6
  end

  test "random_gen returns valid luhn number" do
    {:ok, num} = Algo.random_gen(7)
    Algo.valid?(num)
  end

  test "valid functionality works for lists" do
    assert [true, true] = Algo.valid?([12345674, 8472895310])
  end
end
