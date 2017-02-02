defmodule ProjectEulerElixir do
  @moduledoc """
    Project euler solutions in elixir
  """

  @spec problem1(integer) :: integer
  def problem1(limit) do
     multiple_of_five = [divisible_by: 5, up_to: limit]
                        |> IntegerHelper.count_of_numbers()
                        |> range_to
                        |> Enum.map(&(&1 * 5))

     multiple_of_three = [divisible_by: 3, up_to: limit]
                         |> IntegerHelper.count_of_numbers()
                         |> range_to
                         |> Enum.map(&(&1 * 3))

     multiple_of_five ++ multiple_of_three
          |> Enum.uniq()
          |> Enum.reduce(0, fn(x, acc) -> x + acc end)
  end

  @spec range_to(integer) :: List
  def range_to(value) do
    (1..value)
  end
end
