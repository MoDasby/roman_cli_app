defmodule RomanNumberConverterTest do
  use ExUnit.Case
  doctest RomanNumberConverter

  test "test convert 1 to I" do
    assert RomanNumberConverter.get_roman_num(1) == "I"
  end

  test "test convert 4 to IV" do
    assert RomanNumberConverter.get_roman_num(4) == "IV"
  end

  test "test convert 11 to XI" do
    assert RomanNumberConverter.get_roman_num(11) == "XI"
  end

  test "test convert 42 to XXII" do
    assert RomanNumberConverter.get_roman_num(42) == "XLII"
  end

  test "test convert 100 to C" do
    assert RomanNumberConverter.get_roman_num(100) == "C"
  end

  test "test convert 892 to DCCCXCII" do
    assert RomanNumberConverter.get_roman_num(892) == "DCCCXCII"
  end

  test "test convert 3999 to MMMCMXCIX" do
    assert RomanNumberConverter.get_roman_num(3999) == "MMMCMXCIX"
  end
end
