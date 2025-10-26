defmodule Palindrome do
  def is_palindrome(str) do
    formmated_str = str |> String.downcase() |> String.replace(" ", "") |> String.graphemes()
    check_palindrome(formmated_str, 0, length(formmated_str) - 1)
  end

  defp check_palindrome(_str, left, right) when left >= right, do: true

  defp check_palindrome(str, left, right) when left < right do
    check = Enum.at(str, left) == Enum.at(str, right)

    if check do
      check_palindrome(str, left + 1, right - 1)
    else
      false
    end
  end
end
