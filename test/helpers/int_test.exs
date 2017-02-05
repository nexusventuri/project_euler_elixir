defmodule IntTest do
  use ExUnit.Case
  doctest Int
  import Int

  test "sum_divisible_by" do
    assert sum_divisible_by(3, up_to: 10) == 9 + 6 + 3
    assert sum_divisible_by(3, up_to: 12) == 12 + 9 + 6 + 3
  end

  test "palindromic?" do
    assert palindromic?(12) == false
    assert palindromic?(102) == false

    assert palindromic?(10001) == true
    assert palindromic?(10501) == true
  end
end
