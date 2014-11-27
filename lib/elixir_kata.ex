defmodule Romans do
    def fromArabic(num) do
        cond do
            num < 0 ->
                raise "only positive numbers allowed"
            num > 3000 ->
                raise "max allowed is 3000"
            num == 0 ->
                ""
            num >= 1000 ->
                "M" <> fromArabic(num-1000)
            num >= 900 ->
                "CM" <> fromArabic(num-900)
            num >= 500 ->
                "D" <> fromArabic(num-500)
            num >= 400 ->
                "CD" <> fromArabic(num-400)
            num >= 100 ->
                "C" <> fromArabic(num-100)
            num >= 90 ->
                "XC" <> fromArabic(num-90)
            num >= 50 ->
                "L" <> fromArabic(num-50)
            num >= 40 ->
                "XL" <> fromArabic(num-40)
            num >= 10 ->
                "X" <> fromArabic(num-10)
            num >= 9 ->
                "IX" <> fromArabic(num-9)
            num >= 5 ->
                "V" <> fromArabic(num-5)
            num >= 4 ->
                "IV" <> fromArabic(num-4)
            num >= 1 ->
                "I" <> fromArabic(num-1)
        end
    end
end
