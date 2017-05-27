class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  def get_user
    user_signed_in? ? current_user : User.find_by(name: 'guest')
  end

end
