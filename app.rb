require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/hash')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  variable = params.fetch('word')
  @display = variable.get_scrabble_score()
  erb(:result)
end
