require 'vendor/sinatra/lib/sinatra.rb'
#require 'rubygems'
#require 'sinatra'

set :run, false
set :environment, :production
set :public, File.dirname(__FILE__) + '/public'

require 'bootstrap.rb'

run Sinatra::Application
