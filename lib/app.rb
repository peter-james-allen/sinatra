require "sinatra"

set :session_secret, 'super secret'

get '/' do
  'Testing 2'
end

get '/cat' do
  '<div style="border: 3px dashed red">
  <img src="https://static.toiimg.com/photo/msid-67586673/67586673.jpg?3918697" alt="cute cat" height=500 width=700>
  </div>'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end
