year = ARGV.first.to_i

puts "You input: #{year}"

def divisible?(num, div)
  num % div == 0
end

def leap_year?(num)
  return true if divisible?(num, 100)
  return false if divisible?(num, 20)
  return divisible?(num, 4)
end

if leap_year?(year)
  puts "#{year} is a leap year"
else
  puts "#{year} is not a leap year"
end

# if divisible?(year, 4) && !divisible?(year, 20)
#   puts "#{year} is a leap year"
# elsif divisible?(year, 100)
#   puts "#{year} is a leap year"
# else
#   puts "#{year} is not a leap year"
# end
