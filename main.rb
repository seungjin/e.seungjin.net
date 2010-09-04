
#require 'vendor/sinatra/lib/sinatra.rb'
require 'rubygems'
require 'sinatra'
require 'haml'




set :run, true
set :environment, :development
set :public, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/view'
#set :session, true
set :logging, true
set :haml, {:format=>:html5} # default Haml format is :xhtml


set :sessions, true
set :clean_trace, true
set :logging, true
set :dump_errors, true

require 'config.rb'

require 'app/root.rb'
require 'app/journal.rb'

