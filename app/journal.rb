


get '/journal' do 
	haml :"journal/index"
end

get '/journal/:id' do
        "hello #{params[:id]}"
end

post '/journal' do 
end

put '/journal' do 
end

delete '/journal' do 
end


