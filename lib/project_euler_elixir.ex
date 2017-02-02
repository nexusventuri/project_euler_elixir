defmodule ProjectEulerElixir do
  @moduledoc """
    Project euler solutions in elixir
  """

  @spec problem1(integer) :: integer
  def problem1(limit) do
    IntegerHelper.sum_divisible_by(3, up_to: limit) +
    IntegerHelper.sum_divisible_by(5, up_to: limit) -
    IntegerHelper.sum_divisible_by(15, up_to: limit)
  end

  @spec range_to(integer) :: List
  def range_to(value) do
    (1..value)
  end
end
