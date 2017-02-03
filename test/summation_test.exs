defmodule SummationTest do
  use ExUnit.Case
  doctest Summation

  test "sum_of_numbers returns the sum of numbers up to a limit" do
    assert Summation.sum_of_numbers(up_to: 3) == 6
    assert Summation.sum_of_numbers(up_to: 4) == 10
  end
end
