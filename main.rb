require "sinatra"

comments = []

get '/' do
    @comments = comments
    erb :index
end

get '/about' do
    erb :about 
end

post '/send' do
    comments.push(params[:body])
    erb :index
end