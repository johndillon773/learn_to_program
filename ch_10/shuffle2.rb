def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  
  if unshuffled.length <= 0
    return shuffled
  end

  to_shuffle = unshuffled[rand(unshuffled.length)]
  still_unshuffled = []


  unshuffled.each do |test_obj|
    if to_shuffle == test_obj
      shuffled.push to_shuffle
    else
      still_unshuffled.push to_shuffle
    end
  end

  rec_shuffle(still_unshuffled, shuffled)

end


my_arr = ["A", "B", "C", "a", "b", "c"]

puts shuffle(my_arr)