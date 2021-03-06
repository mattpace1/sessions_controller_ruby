class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id 
        redirect_to '/authorized'
    else
      redirect_to '/login'
    end
  end

  def welcome
    
  end

  def login
  end

  def page_requires_login
  end
  
  def logout
    session.delete(:user_id)
    redirect_to '/welcome' 
  end

  def active
    render_session_status
  end
 
  def timeout
    render_session_timeout
  end

end
