require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    # renders the form
    erb :create_puppy
  end

  post '/list_puppy' do
    #displays puppy
    @list_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end

end