
#require 'vendor/sinatra/lib/sinatra.rb'
require 'rubygems'
require 'sinatra'
require 'haml'




set :run, false
set :environment, :production
set :public, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/view'
#set :session, true
set :logging, true
#set :haml, {:format => :html5} # default Haml format is :xhtml


require 'config.rb'



require 'app/root.rb'
require 'app/journal.rb'


