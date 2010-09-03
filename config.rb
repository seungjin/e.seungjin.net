

require 'dm-core'
require 'dm-validations'
require 'logger'


## CONFIGURATION

configure :development do 
  DataMapper.setup(:default, {
                     :adapter => 'mysql',
                     :host => '',
                     :username => '',
                     :password => '',
                     :database => ''
                   })

  DataMapper::Logger.new(STDOUT, :debug)
end

configure :production do 
  DataMapper.setup(:default, {
                     :adapter => 'mysql',
                     :host => 'mysql.seungjin.net',
                     :username => 'seungjin',
                     :password => 'chickfly81',
                     :database => 'seungjin_dev'
                   })
end
