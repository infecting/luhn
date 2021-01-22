defmodule Luhn do
  defdelegate valid?(x), to: Luhn.Algo
end
