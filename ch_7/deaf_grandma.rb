puts "HI DARLING!"

said = gets.chomp

while said != "BYE"
  if said == said.upcase
    puts "NO, NOT SINCE " + ( 1930 + rand(21) ).to_s + "!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
  said = gets.chomp
end

puts "BYE DARLING!"

