defmodule SeriesTest do
  use ExUnit.Case
  doctest Series

  describe "unique_pairs" do
    test "returns a stream" do
      result = Series.unique_pairs(from: 11, to: 10)

      assert is_function(result) == true
    end

    test "returns pairs ordered" do
      result = [from: 12, to: 10]
                 |> Series.unique_pairs()
                 |> Enum.map(&(&1))

      assert result == [{12, 12},
                        {11, 12}, {11, 11},
                        {10, 12}, {10, 11}, {10, 10}]

    end
  end
end
