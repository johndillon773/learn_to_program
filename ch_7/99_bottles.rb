i = 99

while i > 2
  puts i.to_s       + " bottles of beer on the wall, "                    + \
       i.to_s       + " bottles of beer, take one down, pass it around, " + \
       (i - 1).to_s + " bottles of beer on the wall!"
  i = i - 1
end

puts "2 bottles of beer on the wall, 2 bottles of beer, take one down, pass it around, " \
     "1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer, take one down, pass it around, " \
     "no more bottles of beer on the wall!"
