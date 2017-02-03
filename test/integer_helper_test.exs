defmodule IntegerHelperTest do
  use ExUnit.Case
  doctest IntegerHelper

  test "sum_divisible_by" do
    assert IntegerHelper.sum_divisible_by(3, up_to: 10) == 9 + 6 + 3
    assert IntegerHelper.sum_divisible_by(3, up_to: 12) == 12 + 9 + 6 + 3
  end
end
