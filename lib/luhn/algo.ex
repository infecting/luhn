defmodule Luhn.Algo do
  def valid?(num) when is_integer(num) do
    num
    |> checksum()
    |> Integer.mod(10) == 0
  end

  def valid?(nums) when is_list(nums), do: Enum.map(nums, &valid?/1)

  def random_gen(len) do
    num = random_num(len)

    if valid?(num) do
      num
    else
      random_gen(len)
    end
  end

  def checksum(num) do
    list = Integer.digits(num)
    [first | rest] = Enum.reverse(list)
    luhn = Enum.map_every(rest, 2, &pass_to_check/1)

    [first | luhn]
    |> Enum.sum()
  end

  def generate_from_joker(string) do
    list = String.split(string, "*")
    [h | t] = list
    prefix = String.to_integer(h)
    sum = checksum(prefix)
    len = length(t)
    generate_checksum(prefix, sum, len)
  end

  def pass_to_check(x) do
    (x * 2)
    |> check()
  end

  defp check(x) when x > 9 do
    x
    |> Integer.digits()
    |> Enum.sum()
  end

  defp check(x) when x < 10, do: x

  defp random_num(len) do
    derived = len - 1
    new_len = :math.pow(10, derived)
    Enum.random(round(new_len)..round(new_len * 9.9))
  end

  defp generate_checksum(prefix, sum, len) do
    num = random_num(len)
    final = Integer.undigits(Integer.digits(prefix) ++ Integer.digits(num))

    if valid?(final) do
      final
    else
      generate_checksum(prefix, sum, len)
    end
  end
end
