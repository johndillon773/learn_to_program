def ask question
  
  while true
    puts question
    reply = gets.chomp.downcase

    if ( reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      else
        return false
      end
      break
    else
      puts "Please answer \'yes\' or \'no\'."
    end
  end
end

puts "Hello..."
puts

ask "Do you like eating tacos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating nachos?"
puts "Just a few more questions."
ask "Do you like eating burritos?"

puts
puts "DEBRIEFING:"
puts "Thank you..."
puts
puts wets_bed