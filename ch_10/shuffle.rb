def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  
  if unshuffled.length <= 0
    return shuffled
  end

  while unshuffled.size > 0
    i = rand(unshuffled.size)
    shuffled << unshuffled[i]
    unshuffled.delete_at(i)
  end

  shuffled
end




my_arr = ["Chica", "Ale", "John", "Paloma", "Barb", "mike", "jaime", "connor"]

puts shuffle(my_arr)