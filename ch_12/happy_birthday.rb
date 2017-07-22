puts "What year were you born?"
year = gets.chomp.to_i
puts "What month?"
month = gets.chomp.to_i
puts "What day?"
day = gets.chomp.to_i

bday = Time.local(year, month, day)
 
t = Time.new

age = 1

while Time.local(year + age, month, day) <= t
  puts "SPANK"
  age += 1
end