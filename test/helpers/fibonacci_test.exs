defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "all returns a stream of fibonacci numbers" do
    first_6 = Fibonacci.all |> Enum.take(6)
    assert first_6 == [1, 2, 3, 5, 8, 13]
  end

  test "up to returns all fibonacci numbers below a value" do
    assert Fibonacci.up_to(8) == [1, 2, 3, 5]
    assert Fibonacci.up_to(14) == [1, 2, 3, 5, 8, 13]
  end
end
