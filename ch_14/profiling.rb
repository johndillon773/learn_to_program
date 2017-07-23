def profile proc
  start_time = Time.new
  proc.call
  duration = Time.new - start_time
  puts "#{proc}: #{duration} seconds"
end

doublings = Proc.new do
  number = 1

  25000.times do
    number = number + number
  end
  
  puts "#{number.to_s.length} digits"  
end

count_to_a_million = Proc.new do
  number = 0
  1000000.times do
    number = number + 1
  end
end

profile(doublings)
puts "-------"
profile(count_to_a_million)