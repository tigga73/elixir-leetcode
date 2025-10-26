defmodule TwoSumPairs do
  def check_pairs([], _), do: []

  def check_pairs(list, target),
    do: do_check_pairs(Enum.sort(list), target, 0, length(list) - 1, [])

  defp do_check_pairs(_list, _target, left, right, acc) when left >= right, do: acc

  defp do_check_pairs(list, target, left, right, acc) when left < right do
    num_left = Enum.at(list, left)
    num_right = Enum.at(list, right)

    cond do
      num_left + num_right == target ->
        do_check_pairs(list, target, left + 1, right - 1, [{num_left, num_right} | acc])

      num_left + num_right < target ->
        do_check_pairs(list, target, left + 1, right, acc)

      num_left + num_right > target ->
        do_check_pairs(list, target, left, right - 1, acc)
    end
  end
end
