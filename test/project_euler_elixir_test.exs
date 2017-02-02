defmodule ProjectEulerElixirTest do
  use ExUnit.Case
  doctest ProjectEulerElixir

  test "problem 1 sum of multiple of 3 and 5 less than 1000" do
    assert ProjectEulerElixir.problem1(999) == 233168
  end
end
