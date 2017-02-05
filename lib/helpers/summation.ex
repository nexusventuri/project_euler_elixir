defmodule Summation do
  @moduledoc """
    Useful functions to calculate summations
  """

  @spec sum_of_numbers(up_to: integer) :: integer
  def sum_of_numbers(up_to: up_to) do
    div(up_to * (up_to + 1), 2)
  end

  @spec sum_of_squares(up_to: integer) :: integer
  def sum_of_squares(up_to: number) do
    Float.round(number * number * number / 3 +
                number * number / 2 +
                number / 6, 0)
  end
end
