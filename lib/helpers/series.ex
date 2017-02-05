defmodule Series do
  @moduledoc """
    Series generators
  """

  @spec unique_pairs(from: integer, to: integer) :: List
  def unique_pairs(from: from, to: to) do
    (from..to)
      |> Stream.map(fn(x) -> pair_with_all(x, from..x) end)
      |> Stream.flat_map(fn(x) -> x end)
  end

  @spec pair_with_all(integer, Enumerable) :: Enumerable
  defp pair_with_all(x, enum) do
    [x] |> Stream.cycle() |> Stream.zip(enum)
  end
end
