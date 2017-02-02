defmodule IntegerHelper do
  @moduledoc """
    Helper integer functions
  """

  @spec count_of_numbers(divisible_by: integer, up_to: integer) :: integer
  def count_of_numbers(divisible_by: divisible_by, up_to: up_to) do
    div(up_to, divisible_by)
  end
end
