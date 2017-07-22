puts "Please enter a starting year:"
start_year = gets.chomp.to_i

puts "Thank you. Now please enter an ending year:"
end_year = gets.chomp.to_i

puts "Between #{start_year} and #{end_year}, the following years were leap years:"

year = start_year

while year <= end_year
  if year % 100 == 0
    if year % 400 == 0
      puts year.to_s
      year = year + 4
    else
      year = year + 4
    end
  elsif year % 4 != 0
    year = year + 1
  else
    puts year.to_s
    year = year + 4
  end
end
    