defmodule Prime do
  @moduledoc """
    Function to calculate prime numbers
  """

  @spec factors(integer) :: List
  def factors(number) do
    limit = :math.sqrt(number)
    factors(number, sieve(up_to: limit), [])
  end

  @spec factors(integer, List, List) :: List
  def factors(1, [], found), do: found
  def factors(number, [], found), do: Enum.uniq([number | found])

  def factors(number, [prime | primes], found) do
    case rem(number, prime) do
      0 -> factors(div_r(number, prime), primes, [prime | found])
      _ -> factors(number, primes, found)
    end
  end

  @spec sieve(up_to: integer) :: Stream
  def sieve(up_to: up_to) do
    {1, []}
      |> Stream.unfold(&next_prime/1)
      |> Enum.take_while(fn(x) -> x <= up_to end)
  end

  @spec next_prime({integer, List}) :: integer
  def next_prime({current, all_primes}) do
    next_prime_distance = (1..current)
      |> Enum.find(fn (x) -> is_prime?(current + x, all_primes) end)

    found = current + next_prime_distance
    {found, {found, all_primes ++ [found]}}
  end

  @spec is_prime?(integer) :: boolean
  def is_prime?(value) do
    limit = :math.sqrt(value)
    primes = sieve(up_to: limit)

    is_prime?(value, limit, primes)
  end

  @spec is_prime?(integer, List) ::integer
  def is_prime?(value, primes) do
    limit = :math.sqrt(value)

    is_prime?(value, limit, primes)
  end

  @spec is_prime?(integer, float, List) ::integer
  def is_prime?(value, root, primes) do
    primes
      |> Stream.take_while(fn(x) -> x <= root end)
      |> Enum.all?(fn(x) -> rem(value, x) != 0 end)
  end

  defp div_r(number, prime) do
    case rem(number, prime) do
      0 -> div_r(div(number, prime), prime)
      _ -> number
    end
  end
end
