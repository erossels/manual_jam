class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now[:notice] = 'Invalid email or password'
      render action: :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'Signed out succesfully'
  end
end