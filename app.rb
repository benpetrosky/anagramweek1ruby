require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

# get('/anagram_answer') do
#   @anagram = params.fetch('anagram').word()
#   erb(:anagram_answer)
end
