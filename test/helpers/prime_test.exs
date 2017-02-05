defmodule PrimeTest do
  use ExUnit.Case
  doctest Prime

  test "is_prime?(x)" do
    assert Prime.is_prime?(4) == false
    assert Prime.is_prime?(15) == false
    assert Prime.is_prime?(21) == false
    assert Prime.is_prime?(987) == false

    assert Prime.is_prime?(3) == true
    assert Prime.is_prime?(7) == true
    assert Prime.is_prime?(13) == true
    assert Prime.is_prime?(29) == true
    assert Prime.is_prime?(997) == true
  end

  test "is_prime?(x, l)" do
    assert Prime.is_prime?(4, [2, 3, 5, 7]) == false
    assert Prime.is_prime?(49, [2, 3, 5, 7]) == false

    assert Prime.is_prime?(11, [2, 3, 5, 7]) == true
    assert Prime.is_prime?(13, [2, 3, 5, 7]) == true
  end

  test "is_prime?(x, r, l)" do
    assert Prime.is_prime?(4, 2.0, [2, 3, 5, 7]) == false
    assert Prime.is_prime?(49, 7.0, [2, 3, 5, 7]) == false

    assert Prime.is_prime?(11, 3, [2, 3, 5, 7]) == true
    assert Prime.is_prime?(13, 3, [2, 3, 5, 7]) == true
    assert Prime.is_prime?(47, 7.0, [2, 3, 5, 7]) == true
  end

  test "next_prime" do
    assert Prime.next_prime({2, [2]}) == {3, {3, [2, 3]}}
    assert Prime.next_prime({3, [2, 3]}) == {5, {5, [2, 3, 5]}}
    assert Prime.next_prime({5, [2, 3, 5]}) == {7, {7, [2, 3, 5, 7]}}
    assert Prime.next_prime({7, [2, 3, 5, 7]}) == {11, {11, [2, 3, 5, 7, 11]}}
    assert Prime.next_prime({11, [2, 3, 5, 7, 11]}) == {13, {13, [2, 3, 5, 7, 11, 13]}}
  end

  test "sieve" do
    assert Prime.sieve(up_to: 15) == [2, 3, 5, 7, 11, 13]
    assert Prime.sieve(up_to: 138) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137]
  end
end
