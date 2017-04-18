require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/hash')
require('pry')

get('/') do
  variable = params.fetch('word')
  @display = variable.get_scrabble_score()
  erb(:index)
end


body
  <%= @display %>
