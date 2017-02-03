defmodule IntegerHelper do
  @moduledoc """
    Helper integer functions
  """

  @spec sum_divisible_by(integer, up_to: integer) :: integer
  def sum_divisible_by(value, up_to: up_to) do
    value * Summation.sum_of_numbers(up_to: div(up_to, value))
  end
end
