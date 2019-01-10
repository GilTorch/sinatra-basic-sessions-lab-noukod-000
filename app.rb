require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    session[@params.keys[0]]=@params[:item]
    @session=session
    erb :item
  end

end
