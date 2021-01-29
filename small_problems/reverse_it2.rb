#REVERSE IT PART 2

def reverse_words(string)
  words = []

string.split.map! do |element|
  element.reverse!
  words << element
  end

words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')