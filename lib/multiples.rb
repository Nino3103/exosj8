#is_a_multiple_of_3_or_5?

#sum_of_3_or_5_multiples




def is_a_multiple_of_3_or_5?(integer)

  ((integer%3 == 0) || (integer%5 ==0))? true : false

end


def sum_of_3_or_5_multiples(number)

  if number.is_a? Integer
    (1..number-1).inject(0){|sum, n| is_a_multiple_of_3_or_5?(n)? sum + n : sum}
  else
    puts "Un entier naturel putain ! TG."
  end

end

  puts sum_of_3_or_5_multiples(5)

# def sum_of_3_or_5_multiples(number)
#
#   while number.is_a? Integer = false return "Un entier naturel putain ! TG." end
#
#     sum = 0
#     i = 0
#     while i < number do
#
#       if is_a_multiple_of_3_or_5?(i) == true then
#         sum = sum + i
#       end
#
#       i = i +1
#     end
#
#     return sum
#
#   end
#
#   puts sum_of_3_or_5_multiples(10)
