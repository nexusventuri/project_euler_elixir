defmodule IntegerHelperTest do
  use ExUnit.Case
  doctest IntegerHelper

  test "sum_of_numbers returns the sum of numbers up to a limit" do
    assert IntegerHelper.sum_of_numbers(up_to: 3) == 6
    assert IntegerHelper.sum_of_numbers(up_to: 4) == 10
  end

  test "sum_divisible_by" do
    assert IntegerHelper.sum_divisible_by(3, up_to: 10) == 9 + 6 + 3
    assert IntegerHelper.sum_divisible_by(3, up_to: 12) == 12 + 9 + 6 + 3
  end
end
