defmodule MoveZeros do
  def move([]), do: []
  def move(nums), do: do_move(nums, [], 0)

  defp do_move([], acc, zero_count), do: Enum.reverse(acc) ++ List.duplicate(0, zero_count)
  defp do_move([h | t], acc, zero_count) when h == 0, do_move(t, acc, zero_count + 1)
  defp do_move([h | t], acc, zero_count), do_move(t, [h | acc], zero_count)
end
