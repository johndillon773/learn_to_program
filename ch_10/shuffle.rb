def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  
  if unshuffled.length <= 0
    return shuffled
  end

  to_shuffle        = unshuffled.pop
  still_unshuffled  = []

  unshuffled.each do |tested_object|        
    
    rnd = rand(2)                           
    
    if rnd == 1
      shuffled.push to_shuffle
      to_shuffle = tested_object
    else
      still_unshuffled.push tested_object
    end

  end

  shuffled.push to_shuffle

  rec_shuffle(still_unshuffled, shuffled)

end


my_arr = ["A", "B", "C", "a", "b", "c"]

puts shuffle(my_arr)