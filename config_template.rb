

## CONFIGURATION

require 'dm-core'

configure :development do
  DataMapper.setup(:default, {
                     :adapter => 'sqlite',
                     :host => 'localhost',
                     :username => '',
                     :password => '',
                     :database => 'db/my_dev_db'
                   })

  DataMapper::Logger.new(STDOUT, :debug)
end

configure :production do 
  DataMapper.setup(:default, {
                     :adapter => 'mysql',
                     :host => '',
                     :username => '',
                     :password => '',
                     :database => ''
                   })
  DataMapper::Logger.new(STDOUT, :debug)
end
