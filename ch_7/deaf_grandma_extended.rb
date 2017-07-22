puts "HI DARLING!"

byes = 0

while byes < 3
  said = gets.chomp
  if said == said.upcase 
    puts "NO, NOT SINCE " + ( 1930 + rand(21) ).to_s + "!"
    if said == "BYE"
      byes += 1
    else
      byes = 0
    end
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

puts "BYE DARLING!"









