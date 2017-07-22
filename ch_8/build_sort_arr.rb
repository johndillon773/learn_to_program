puts "What words would you like to put in your array?"

arr = []

while true
  word = gets.chomp
  if word.length >= 1
    arr.push word
  else
    break
  end
end

puts arr.sort