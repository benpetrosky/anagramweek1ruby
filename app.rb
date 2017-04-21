require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/input') do
  @anagram = params.fetch('first_input').word('second_input')
  erb(:anagram_answer)
end
