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

  test "problem 3 largest prime factor of 600851475143" do
    assert ProjectEulerElixir.problem3(13_195) == 29

    assert ProjectEulerElixir.problem3(600_851_475_143) == 6857
  end

  test "problem 4 largest palindrome for product of 3 digits numbers" do
    assert ProjectEulerElixir.problem4 == 906_609
  end

  test "problem 5 minimum number divisible by 1..20" do
    assert ProjectEulerElixir.problem5(20) == 232_792_560
  end

  test "problem 6 difference between sum of squares and square of number" do
    assert ProjectEulerElixir.problem6(10) == 2_640
    assert ProjectEulerElixir.problem6(100) == 25_164_150
  end
end
