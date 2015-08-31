class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  def profile
    unless session[:signed_in] == true
      redirect_to '/index.html'
    end
  end
  
  def logout
    session[:signed_in] = false
    session[:email] = nil
    session[:password] = nil
    
    if(session[:email] == nil)
      logger.info" The user id is null"
    end
    
    redirect_to '/index'
  end
  
  def login
    @name = User.name
    @email = params[:email]
    @password = params[:password]
    if @email && @password
      session[:signed_in] = true
      session[:email] = params[:email]
      logger.info" The user id is not null"
      redirect_to '/profile'
    else
      logger.info" The user id is null"
    end
  end
  
end

