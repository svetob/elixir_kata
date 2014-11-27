defmodule Romans do

    def lits, do: [
        {1000, "M"},
        {900, "CM"},
        {500, "D"},
        {400, "CD"},
        {100, "C"},
        {90, "XC"},
        {50, "L"},
        {40, "XL"}, 
        {10, "X"},
        {9, "IX"},
        {5, "V"},
        {4, "IV"},
        {1, "I"}
    ]

    def fromArabic(num) do
        cond do
            num < 0 ->
                raise "only positive numbers allowed"
            num > 3000 ->
                raise "max allowed is 3000"
            num == 0 ->
                ""
            true ->
                elem(pick(num), 0) <> fromArabic(elem(pick(num), 1))
        end
    end

    def pick(num) do
        pick(num, lits)
    end

    def pick(num, l) do
        if num >= elem(hd(l), 0) do
            {elem(hd(l), 1), num - elem(hd(l), 0)}
        else
            pick(num, tl(l))
        end
    end
end
