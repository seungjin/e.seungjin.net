

get '/journal' do 
    "Hello"
end

post '/journal' do 
end

put '/journal' do 
end

delete '/journal' do 
end

get %r{/journal/([\d]+)} do |c|
    "Hello, #{c}!"
end

get %r{/journal/recent/([\d]+)} do |c|
    "Hello, #{c}!"
end

get %r{/journal/([\w]+)} do |c|
    "Hello, #{c}!"
end

