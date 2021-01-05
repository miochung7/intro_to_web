require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello"
end

get '/secret' do
  "Shush this is a secret, don't tell anyone!"
end

get '/random-cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample 
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name] 
  erb(:index)
end
