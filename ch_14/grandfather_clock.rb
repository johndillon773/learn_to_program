def grandfather_clock &block
  i = Time.new.hour
  if i == 0
    i = 12
  elsif i > 12
    i -= 12
  end
  i.times do
    block.call
  end
end

grandfather_clock do
  puts "DONG!" 
end