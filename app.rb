require 'sinatra'

get '/' do
  slim :index
end

get '/max/:nombres' do |nombres|
  @solution = nombres.split(",").map{|v| v.to_i }.max
  slim :max
end

get '/hello/:name' do |name|
  @name = name
  slim :hello
end
