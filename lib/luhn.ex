defmodule Luhn do
  defdelegate valid?(x), to: Luhn.Algo
  defdelegate random_gen(x), to: Luhn.Algo
  defdelegate generate_from_joker(x), to: Luhn.Algo
end
