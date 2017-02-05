defmodule ProjectEulerElixir do
  @moduledoc """
    Project euler solutions in elixir
  """

  import Int

  @spec problem1(integer) :: integer
  def problem1(limit) do
    sum_divisible_by(3, up_to: limit) +
    sum_divisible_by(5, up_to: limit) -
    sum_divisible_by(15, up_to: limit)
  end

  @spec problem2(integer) :: integer
  def problem2(limit) do
    limit
      |> Fibonacci.up_to()
      |> Enum.filter(fn(x) -> rem(x, 2) == 0 end)
      |> Enum.reduce(0, fn(x, acc) -> x + acc end)
  end

  @spec problem3(integer) :: integer
  def problem3(limit) do
    limit
      |> Prime.factors()
      |> Enum.max()
  end

  @spec problem4() :: integer
  def problem4() do
    [from: 999, to: 100]
      |> Series.unique_pairs()
      |> Stream.map(fn {a, b} -> a * b end)
      |> Stream.filter(fn(x) -> palindromic?(x) end)
      |> Enum.max()
  end
end
