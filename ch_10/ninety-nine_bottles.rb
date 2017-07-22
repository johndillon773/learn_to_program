def english_number number

  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  
  num_string = ''
  
  ones_place = ['one',      'two',      'three',
                'four',     'five',     'six',
                'seven',    'eight',    'nine']
  tens_place = ['ten',      'twenty',   'thirty',
                'forty',    'fifty',    'sixty',
                'sevety',   'eighty',   'ninety']
  teenagers =  ['eleven',   'twelve',   'thirteen',
                'fourteen', 'fifteen',  'sixteen',
                'seveteen', 'eighteen', 'nineteen']
  
  left = number
  write = left/100
  left = left - write*100
  
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end
  
  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
  
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string

end

i = 99

while i > 2
  puts english_number(i).to_s     + " bottles of beer on the wall, "                    + \
       english_number(i).to_s     + " bottles of beer, take one down, pass it around, " + \
       english_number(i - 1).to_s + " bottles of beer on the wall!"
  i = i - 1
end


puts "2 bottles of beer on the wall, 2 bottles of beer, take one down, pass it around, 1 bottle of beer on the wall!"
puts "1 bottle of beer on the wall, 1 bottle of beer, take one down, pass it around, no more bottles of beer on the wall!"