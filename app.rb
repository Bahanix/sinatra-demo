require 'sinatra'

get '/' do
  slim :index
end

get '/hello/:name' do
  @name = params[:name]
  slim :hello
end
