require('rspec')
require('./lib/anagram')



describe('String#anagram') do


  it('identifies when two entries are the same word') do
    expect(('mariners').word('mariners')).to(eq("You entered the exact same word twice"))
  end

  it('accounts for entries without any vowels') do
    expect(('qwTgb').word('lkjrwt')).to(eq("Atleast one of your entries does not have any vowels and is therefore not actually a word dum dum."))
  end

  it('accounts for entries that are palindromes') do
    expect(('desserts').word('stressed')).to(eq("These words are palindromes."))
  end

  it('accounts for entries that are anagrams') do
    expect(('desserts').word('stsresed')).to(eq("These words are anagrams."))
  end

  it('accounts for entries that are antigrams') do
    expect(('random').word('fully')).to(eq("These words have no letter matches and are antigrams."))
  end
end
