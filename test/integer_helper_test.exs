defmodule IntegerHelperTest do
  use ExUnit.Case
  doctest IntegerHelper

  test "count of numbers returns the count of integers divisible by a number up to another number" do
    assert IntegerHelper.count_of_numbers(divisible_by: 10, up_to: 100) == 10
    assert IntegerHelper.count_of_numbers(divisible_by: 1, up_to: 100) == 100
  end
end
