# def sum_expense(input)
#     length = input.length
#     sum = 0
#     counter = 0
#     while counter < length
#         sum += input[counter]
#         counter += 1
#     end
#     return sum
# end

# def sum_expense(expenses)
#     sum = 0
#     expenses.each do |expense|
#         sum += expense
#     end
#     return sum
# end

def sum_expense(expenses)
    sum = expenses.sum
    return sum
end

puts "The sum of [1, 2, 3, 4] is #{sum_expense([1, 2, 3, 4])}"
puts "The sum of [2, 3, 4, 5.0] is #{sum_expense([2.0, 3.0, 4.0, 5.0])}"