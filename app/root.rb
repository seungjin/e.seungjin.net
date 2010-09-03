
require 'sinatra'
require 'haml'

get '/' do
  #'aaaa'
  haml :"root/index"
end

post '/' do
end

put '/' do
end

delete '/' do 
end
