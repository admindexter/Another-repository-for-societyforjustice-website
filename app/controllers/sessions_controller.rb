class SessionsController < ApplicationController
  layout 'admin_edit'
  def new
    @title = 'Please enter the password'
  end

  def create
  	session[:password] = params[:password]
  	flash[:notice] = 'Successfully logged in'
  	redirect_to home_path
  end

  def destroy
  	reset_session
  	flash[:notice] = 'Successfully logged out'
  	redirect_to home_path
  end
end

