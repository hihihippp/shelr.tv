class UsersController < ApplicationController

  before_filter :login_required, except: [:show, :login, :authenticate]

  def show
    @user = User.where(nickname: params[:id]).first
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update_attributes(params[:user])
    redirect_to current_user
  end


  #
  # Session management
  #
  
  def logout
    session.delete(:user_id)
    redirect_to '/'
  end

  def login
    redirect_to '/auth/twitter'
  end

  def authenticate
    omniauth = request.env["omniauth.auth"]
    user = User.where(twitter_id: omniauth['uid']).first
    if user
      flash[:notice] = "Signed in successfully."
      session[:user_id] = user.id.to_s
      redirect_to user_path(id: user.id.to_s)
    else
      user_info = omniauth['user_info']
      logger.debug(omniauth['uid'])
      user = User.new(nickname: user_info['nickname'])
      user.twitter_id = omniauth['uid'] # mass assignemnt not allowed
      if user.save
        session[:user_id] = user.id.to_s
        flash[:notice] = "Signed in successfully."
        redirect_to edit_user_path(id: user.id.to_s)
      else
        flash[:notice] = "Failed "
        redirect_to root_url
      end
    end
  end
end
