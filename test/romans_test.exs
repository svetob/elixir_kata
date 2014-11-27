defmodule RomansTest do
  use ExUnit.Case

  test "returns nothing for 0" do
    assert Romans.fromArabic 1 == ""
  end

  test "from specification" do
    assert Romans.fromArabic 1 == "I"
    assert Romans.fromArabic 2 == "II"
    assert Romans.fromArabic 3 == "III"
    assert Romans.fromArabic 4 == "IV"
    assert Romans.fromArabic 5 == "V"
    assert Romans.fromArabic 7 == "VII"
    assert Romans.fromArabic 7 == "VIII"
    assert Romans.fromArabic 9 == "IX"
    assert Romans.fromArabic 10 == "X"
    assert Romans.fromArabic 40 == "XL"
    assert Romans.fromArabic 50 == "L"
    assert Romans.fromArabic 90 == "XC"
    assert Romans.fromArabic 100 == "C"
    assert Romans.fromArabic 400 == "CD"
    assert Romans.fromArabic 500 == "D"
    assert Romans.fromArabic 1000 == "M"
    assert Romans.fromArabic 1990 == "MCMXC"
    assert Romans.fromArabic 2008 == "MMVIII"
    assert Romans.fromArabic 2871 == "MMDCCCLXXI"
    assert Romans.fromArabic 3000 == "MMM"
  end

  test "max number is 3000" do
    assert_raise(RuntimeException, "max allowed is 3000", Romans.fromArabic 3001)
  end

  test "only positive numbers" do
    assert_raise(RuntimeException, "only positive numbers allowed", Romans.fromArabic -1)
  end

end
