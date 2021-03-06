class String
  define_method(:word) do |second_word|
    first_input = self.delete(' ' '!' '?' '.').downcase()
    first_array = first_input.split("")
    second_input = second_word.delete(' ' '!' '?' '.').downcase()
    second_array = second_input.split("")

    responses = {1 => "You entered the exact same word twice", 2 => "Atleast one of your entries does not have any vowels and is therefore not actually a word dum dum.", 3 => "These words are anagrams.", 4=> "These words are palindromes.", 5 => "These words have no letter matches and are antigrams."}


    if ((first_array.include?('a') == false && first_array.include?('e') == false && first_array.include?('i') == false && first_array.include?('o') == false && first_array.include?('u') == false && first_array.include?('y') == false)) || ((second_array.include?('a') == false && second_array.include?('e') == false && second_array.include?('i') == false && second_array.include?('o') == false && second_array.include?('u') == false && second_array.include?('y') == false))
      responses.fetch(2)

    elsif (first_array == second_array)
        responses.fetch(1)

    elsif (first_array.reverse() == second_array)
      responses.fetch(4)

    elsif (first_array.length() == second_array.length()) && (first_array.uniq.sort == second_array.uniq.sort)
      responses.fetch(3)

    elsif ((first_array & second_array).empty? == true)
      responses.fetch(5)

    end
  end
end
