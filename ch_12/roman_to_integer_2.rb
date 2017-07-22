def roman_to_int numeral
  numeral = numeral.downcase
  # convert numeral string to array
  numeral_arr = numeral.split("")
  # validate
  numeral_arr.each do |let|
    if let != "i" && \
       let != "v" && \
       let != "x" && \
       let != "l" && \
       let != "c" && \
       let != "d" && \
       let != "m"
      return "This is not a valid Roman numeral."
    end
  end
  # convert array of letters into array of integers 
  values = { i: 1,
             v: 5,
             x: 10,
             l: 50,
             c: 100,
             d: 500,
             m: 1000 }
  # empty array to receive integers converted from letters:
  int_arr = []
  # converts letters from one array to integers in the other
  numeral_arr.each { |let| int_arr.push values[let.to_sym] }  
  # add and subtract integer array to get integer date
  # integer that array will be added to in order to get total year
  integer = 0
  # adds and subtracts:
  while int_arr.length > 0
    if int_arr[int_arr.length-1] > int_arr[int_arr.length-2]
      integer += int_arr.pop
      integer -= int_arr.pop
    else
      integer += int_arr.pop
    end
  end

integer

end
  
puts roman_to_int("MCMXLIV")
puts roman_to_int("mmxvii")
puts roman_to_int("MMMDCLXXVII")
puts roman_to_int("MCMXRIV")