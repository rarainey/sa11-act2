def find_numbers(text)
    pattern =   /
                \d*\.?    # Optional decimal preceding number and optional number preceding decimal
                \d+       # at least one digit
                /x 
    text.scan(pattern)
end
p find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")
    