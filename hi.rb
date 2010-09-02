
require 'sinatra/lib/sinatra.rb'

puts "hi"

get '/hi' do
	"hello world"
end
