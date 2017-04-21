class String
  define_method(:word) do |second_word|
    first_input = self.downcase()
    first_array = first_input.split("")
    second_input = second_word.downcase()
    second_array = second_input.split("")

    responses = {1 => "You entered the exact same word twice", 2 => "Atleast one of your entries does not have any vowels and is therefore not actually a word dum dum.", 3 => "These words are anagrams.", 4=> "These words are palindromes.", 5 => "These words have no letter matches and are antigrams."}


    if (first_array == second_array)
      responses.fetch(1)


    elsif (first_array.include?('a') == false && first_array.include?('e') == false && first_array.include?('i') == false && first_array.include?('o') == false && first_array.include?('u') == false && first_array.include?('y') == false)
      responses.fetch(2)
    end
  end
end



# first_array.each() do |letter|
#     if letter != ('a') || letter != ('e') || letter != ('i') || letter != ('o') || letter != ('u') || letter != ('y')
#       responses.fetch(2)
#     end
#   end
# second_array.each() do |letter|
#     if letter != ('a') || letter != ('e') || letter != ('i') || letter != ('o') || letter != ('u') || letter != ('y')
#       responses.fetch(2)
#     end
#   end
