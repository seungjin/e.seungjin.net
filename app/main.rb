# main.rb

require 'rubygems'
require 'sinatra'
require 'dm-core'
require 'dm-validations'
require 'logger'


## CONFIGURATION
configure :development do    
  DataMapper.setup(:default, {
    :adapter  => 'mysql',
    :host     => '',
    :username => '' ,
    :password => '',
    :database => ''})  

  DataMapper::Logger.new(STDOUT, :debug)
  
  log = File.new('log/sinatra_dev.log','a+')
  STDOUT.reopen(log)
  STDERR.reopen(log)
end

configure :production do
  DataMapper.setup(:default, {
    :adapter  => 'mysql',
    :host     => 'ooooo.seungjin.net',
    :username => 'ooooo',
    :password => 'ooooo',
    :database => 'ooooo'})  

  DataMapper::Logger.new(STDOUT, :debug)
  
  log = File.new('log/sinatra_production.log','a+')
  STDOUT.reopen(log)
  STDERR.reopen(log)
end

=begin
configure :production do 
    DataMapper.setup(:default,{
        :adapter    => 'mysql',
        :host       => 'ooooo.seungjin.net',
        :username   => 'ooooo',
        :password   => 'ooooo',
        :database   => 'ooooo'
    })
end
=end

## MODELS

class Todo
  include DataMapper::Resource
  property :id,         Integer, :serial=>true
  property :title,      String
  property :created_at, DateTime
  property :complete,   Boolean, :default=>false

  validates_present :title
end

before do
    env['rack.errors'].puts request.env['REMOTE_ADDR']
    env['rack.errors'].puts env['HTTP_USER_AGENT']

end

### CONTROLLER ACTIONS
# index
get '/' do
    @todos=Todo.all :order=>[:created_at]
    haml :index
end

# create
post '/' do
  todo=Todo.create(:title=>params[:title],:created_at=>Time.now)
  redirect '/'
end

# mark complete / incomplete
get '/:id/mark/:is_complete' do
  todo=Todo.get(params[:id])
  todo.update(:complete=>(params[:is_complete]=='complete'))
  redirect '/'
end

get '/:id/delete' do
  todo=Todo.get(params[:id]).destroy
  redirect '/'
end

# SASS stylesheet
get '/stylesheets/style.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :style
end