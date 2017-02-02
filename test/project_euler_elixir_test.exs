defmodule ProjectEulerElixirTest do
  @moduledoc """
    Calculates problem solutions
  """

  use ExUnit.Case
  doctest ProjectEulerElixir

  test "problem 1 sum of multiple of 3 and 5 less than 1000" do
    assert ProjectEulerElixir.problem1(999) == 233_168
  end

  test "problem 2 summation of even fibonacci numbers" do
    assert ProjectEulerElixir.problem2(10) == 10
    assert ProjectEulerElixir.problem2(35) == 44
    assert ProjectEulerElixir.problem2(4_000_000) == 4_613_732
  end
end
