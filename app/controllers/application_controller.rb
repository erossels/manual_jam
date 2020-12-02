class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception

  def user_login
    if logged?
    else
      redirect_to new_session_path, notice: 'You must first login!'
    end
  end
  
end
