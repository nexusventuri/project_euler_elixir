defmodule Prime do
  @moduledoc """
    Function to calculate prime numbers
  """

  @spec factors(integer) :: List
  def factors(number) do
    limit = :math.sqrt(number)
    primes = sieve(up_to: limit)

    primes |> Enum.filter(fn(x) -> rem(number, x) == 0 end)
  end

  @spec sieve(up_to: integer) :: Stream
  def sieve(up_to: up_to) do
    {1, []}
      |> Stream.unfold(&next_prime/1)
      |> Enum.take_while(fn(x) -> x <= up_to end)
  end

  @spec next_prime({integer, List}) :: integer
  def next_prime({current, all_primes}) do
    next = (1..current)
      |> Enum.find(fn (x) -> is_prime?(current + x, all_primes) end)
    found = current + next
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
end
