

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
                     :host => '',
                     :username => '',
                     :password => '',
                     :database => ''
                   })
  DataMapper::Logger.new(STDOUT, :debug)
end
