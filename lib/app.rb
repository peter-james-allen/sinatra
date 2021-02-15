require "sinatra"

set :session_secret, 'super secret'

get '/' do
  'Testing 2'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end
