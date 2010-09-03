
#require 'vendor/sinatra/lib/sinatra.rb'
require 'rubygems'
require 'sinatra'







set :run, false
set :environment, :production
set :public, File.dirname(__FILE__) + '/public'
set :view, File.dirname(__FILE__) + '/view'


require 'config.rb'



require 'app/root.rb'
require 'app/journal.rb'


