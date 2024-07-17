defmodule RomanNumberConverter do
  @values [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  @symbols ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

  def get_roman_num(num) do
    to_roman(num, "", 0)
  end

  defp to_roman(0, roman_num, _index) do
    roman_num
  end

  defp to_roman(num, roman_num, index) do

    value = Enum.at(@values, index)
    symbol = Enum.at(@symbols, index)

    if num >= value do
      to_roman(num - value, "#{roman_num}#{symbol}", 0)
    else
      to_roman(num, roman_num, index + 1)
    end
  end
end
