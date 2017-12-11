require 'sinatra'

get '/' do
  slim :index, layout: :main
end
