require 'sinatra'
require "byebug"

set :public_folder, 'public'
set :port, 4000

get '/' do
  cache_control :public, max_age: 3600
  send_file File.join(settings.public_folder, 'index.html')
end


post '/send_email' do
  send_file File.join(settings.public_folder, 'index.html')
end
