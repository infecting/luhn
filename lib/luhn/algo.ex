defmodule Luhn.Algo do
  def valid?(num) when is_integer(num) do
    list = Integer.digits(num)
    [first | rest] = Enum.reverse(list) 
    luhn = Enum.map_every(rest, 2, &worker/1)
    [first| luhn]
    |> Enum.sum()
    |> Integer.mod(10) == 0
  end

  def valid?(nums) when is_list(nums) do
    Enum.map(nums, &valid?/1)
  end

  def worker(x) do
    check(x*2)
  end

  defp check(x) when x > 9 do
    x
    |> Integer.digits()
    |> Enum.sum()
  end

  defp check(x) when x < 10, do: x

  def random_gen(x) do
    derived = x - 1
    new_len = :math.pow(10, derived)
    num = Enum.random(round(new_len)..round(new_len * 9.9))
    t = valid?(num)
    getter(t, x, num)
  end

  defp getter(_x = true, _len, num) do
    {:ok, num}
  end

  defp getter(_x = false, len, _num) do
    random_gen(len)
  end
end



