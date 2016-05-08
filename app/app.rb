ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'models/user'

require_relative 'data_mapper_setup'



class Chitter < Sinatra::Base

  register Sinatra::Flash

  enable :sessions
  set :session_secret, 'super secret'

  get '/sign_up' do
    erb :'users/user_sign_up_form'
  end


  post '/usercreate'do
    @user = User.new(name: params[:name],
                username: params[:username],
                email: params[:email],
                password: params[:password],
                password_confirmation: params[:password_confirmation])

    if @user.save
      session[:user_id] = @user.id
      redirect to ('/confirm')
    else
      flash.now[:notice] = "Password and confirmation password do not match"
      erb :'users/user_sign_up_form'
        end

  end




  helpers do
    def current_user
      @current_user ||=User.get(session[:user_id])
    end
  end


 get '/confirm' do
   erb :'users/sign_up_confirmation'

 end
     run! if app_file == $0


 end

