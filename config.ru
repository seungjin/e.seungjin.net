


require 'vendor/sinatra/lib/sinatra.rb'
require 'rubygems'


set :run, false
set :environment, :production
set :public, File.dirname(__FILE__) + '/public'

require 'app/root.rb'
require 'app/journal.rb'

run Sinatra::Application
