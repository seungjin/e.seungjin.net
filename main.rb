
require 'sinatra'
require 'haml'
require 'dm-core'
require 'dm-validations'
require 'logger'


set :run, false
set :environment, :production


set :sessions, true
set :clean_trace, true
set :logging, true
set :dump_errors, true
set :show_exceptions, true


set :root, File.dirname(__FILE__)
set :public, File.dirname(__FILE__) + '/public'
set :views, Proc.new { File.join(root, "view") }


require 'app/root.rb'
require 'app/journal.rb'


