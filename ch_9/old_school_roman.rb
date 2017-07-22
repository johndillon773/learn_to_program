puts 'Please enter an integer between 1 and 3000.'

number = gets.chomp.to_i

def old_roman_numeral i

  thousands = i / 1000
  hundreds = i % 1000 / 100
  tens = i % 100 / 10
  ones = i % 10

  numeral = ( "M" * thousands )

  if hundreds < 5 
    numeral = numeral + ( "C" * hundreds )
  else
    numeral = numeral + ( "D" + ( "C" * ( hundreds - 5 )))
  end

  if tens < 5
    numeral = numeral + ( "X" * tens )
  else
    numeral = numeral + ( "L" + ( "X" * ( tens - 5 )))
  end

  if ones < 5
    numeral = numeral + ( "I" * ones )
  else
    numeral = numeral + ( "V" + ( "I" * (ones - 5 )))
  end

  puts numeral
 
end

old_roman_numeral number