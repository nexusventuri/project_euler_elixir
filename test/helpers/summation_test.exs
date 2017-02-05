defmodule SummationTest do
  use ExUnit.Case
  doctest Summation

  test "sum_of_numbers returns the sum of numbers up to a limit" do
    assert Summation.sum_of_numbers(up_to: 3) == 6
    assert Summation.sum_of_numbers(up_to: 4) == 10
  end

  describe "sum_of_squares" do
    test "returns correct value" do
      assert Summation.sum_of_squares(up_to: 1) == 1.0
      assert Summation.sum_of_squares(up_to: 2) == 5.0
      assert Summation.sum_of_squares(up_to: 10) == 385
    end
  end
end
