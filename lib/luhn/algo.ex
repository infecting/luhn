defmodule Luhn.Algo do
  def valid?(num) when is_integer(num) do
    list = Integer.digits(num)
    [first | rest] = Enum.reverse(list) 
    luhn = Enum.map_every(rest, 2, &pass_to_check/1)
    [first| luhn]
    |> Enum.sum()
    |> Integer.mod(10) == 0
  end

  def valid?(nums) when is_list(nums) do
    Enum.map(nums, &valid?/1)
  end

  def random_gen(x) do
    derived = x - 1
    new_len = :math.pow(10, derived)
    num = Enum.random(round(new_len)..round(new_len * 9.9))
    t = valid?(num)
    validate_random(t, x, num)
  end

  def pass_to_check(x) do
    x * 2
    |> check()
  end

  defp check(x) when x > 9 do
    x
    |> Integer.digits()
    |> Enum.sum()
  end

  defp check(x) when x < 10, do: x

  defp validate_random(_x = true, _len, num) do
    {:ok, num}
  end

  defp validate_random(_x = false, len, _num) do
    random_gen(len)
  end
end



