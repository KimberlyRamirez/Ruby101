def stringy(integer)
new_string = ""
  integer.times do |index|
    if index.odd?
    new_string << "0"
    else
      new_string << "1"
    end
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'