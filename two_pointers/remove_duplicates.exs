defmodule RemoveDuplicates do
  def remove([]), do: []
  def remove([head | tail]), do: do_remove(tail, head, [head])

  defp do_remove([], _prev, acc), do: Enum.reverse(acc)
  defp do_remove([h | t], prev, acc) when h == prev, do: do_remove(t, h, acc)
  defp do_remove([h | t], prev, acc), do: do_remove(t, h, [h | acc])
end
