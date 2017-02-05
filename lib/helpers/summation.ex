defmodule Summation do
  @moduledoc """
    Useful functions to calculate summations
  """

  @spec sum_of_numbers(up_to: integer) :: integer
  def sum_of_numbers(up_to: up_to) do
    div(up_to * (up_to + 1), 2)
  end
end
