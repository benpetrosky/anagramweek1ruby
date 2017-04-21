require('rspec')
require('./lib/anagram')

describe('String#anagram') do
  it('identifies when two entries are the same word') do
    expect(('mariners').word('mariners')).to(eq("You entered the exact same word twice"))
  end
  it('does not accept inputs that do not contain vowels') do
    expect(('qwTgb').word('lkjrwt')).to(eq("Atleast one of your entries does not have any vowels and is therefore not actually a word dum dum."))
  end
  # it('does not accept inputs that do not contain vowels') do
  #   expect(('').word()).to(eq('mariners'))
  # end
end



# Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!"

# Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.



# Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."
#
# If a word or phrase is an anagram, check if it's also a palindrome. The method should return something like: "These words are palindromes."
##
# If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."
#








# Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".
