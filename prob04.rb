def valid_date?(date)
    pattern =   /
                \d{4}                     # Year
                -
                (0[1-9] | 1[1-2])         # Month 1-12
                -
                ([0-2][1-9] | 3[0-1])     # Day 1-31
                /x
    date.match?(pattern)
end
p valid_date?("2023-03-15")
p valid_date?("15-03-2023")