class String
  define_method(:word) do |second_word|
    first_input = self.downcase()
    first_array = first_input.split("")
    second_input = second_word.downcase()
    second_array = second_input.split("")

    responses = {1 => "You entered the exact same word twice", 2 => "That\'s not actually a word dum dum.", 3 => "These words are anagrams.", 4=> "These words are palindromes.", 5 => "These words have no letter matches and are antigrams."}

    if (first_array == second_array)
      responses.fetch(1)





    end
  end
end
