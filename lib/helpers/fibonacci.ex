defmodule Fibonacci do
  @moduledoc """
    Fibonacci module
    it allows to create and manipolate a stream of fibonacci elements.
  """

  @spec up_to(integer) :: List
  def up_to(limit) do
    all |> Enum.take_while(fn(x) -> x < limit end)
  end

  @spec all() :: Stream
  def all do
    Stream.unfold({1, 2}, fn {f1, f2} -> {f1, {f2, f1 + f2}} end)
  end
end
