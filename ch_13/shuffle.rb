class Array  

  def shuffle
    
    shuffled = []

    if self.length <= 0
      return shuffled
    end
  
    while self.size > 0
      i = rand(self.size)
      shuffled << self[i]
      self.delete_at(i)
    end

    shuffled
  end
end




my_arr = ["Chica", "Ale", "John", "Paloma", "Barb", "mike", "jaime", "connor"]

puts my_arr.shuffle