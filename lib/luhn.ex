defmodule Luhn do
  defdelegate valid?(x), to: Luhn.Algo
  defdelegate random_gen(x), to: Luhn.Algo
end
