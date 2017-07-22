def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  
  if unsorted.length <= 0
    return sorted
  end

  smallest        = unsorted.pop          # removes the last item from "unsorted" array and stores it as variable "smallest"
  still_unsorted  = []                    # creates new empty array

  unsorted.each do |tested_object|                      # iterates over "unsorted" array,
    if tested_object.downcase < smallest.downcase       # if item is SMALLER than "smallest," 
      still_unsorted.push smallest                      # pushes "smallest" to "still_unsorted"
      smallest = tested_object            # and makes the tested item "smallest" (since it was smaller)
    else                                  # if item is BIGGER than "smallest,"
      still_unsorted.push tested_object   # pushes ITEM to "still_unsorted"
    end                                   # now "smallest" = actual smallest item,
  end                                     # and the rest of the "unsorted" array is now in "still_unsorted"

  sorted.push smallest                    # pushes "smallest" to sorted

  rec_sort(still_unsorted, sorted)        # calls rec_sort and passes in "still_unsorted" as new "unsorted"

end


my_arr = ["Chica", "ale", "John", "Paloma", "Barb", "mike", "jaime", "connor"]

puts sort(my_arr)