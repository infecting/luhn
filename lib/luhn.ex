defmodule Luhn do
  @moduledoc """
  Generate and validate luhn valid numbers using some useful helper functions
  """

  @doc """
  Check if a luhn number is valid given that number

  Returns result of luhn algorithm

  iex> Luhn.valid?(1234)
  false
  """
  defdelegate valid?(x), to: Luhn.Algo

  @doc """
  Randomly generates a luhn number without any prefix given a length

  Returns luhn valid number of length n

  iex> Luhn.random_gen(8)
  40679946
  """
  defdelegate random_gen(x), to: Luhn.Algo

  @doc """
  Randomly generates a luhn valid number given a prefix and n numbers to fill

  Returns luhn valid number with x prefix and n remaining numbers

  iex> Luhn.generate_from_joker("1234****")
  12347209
  """
  defdelegate generate_from_joker(x), to: Luhn.Algo
end
