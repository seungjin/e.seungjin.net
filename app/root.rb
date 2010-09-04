
require 'sinatra'
require 'haml'

get "/robots.txt" do
	response.headers['Cache-Control'] = "public, max-age=86400"
	content_type 'text/plain', :charset => 'utf-8'
	"User-agent: *\nDisallow: /"
end

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
