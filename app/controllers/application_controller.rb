class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :authenticate_user
  include NetworkHelper

  private

  def set_current_user
    user_data = session[:current_user_data]
    if user_data
      @current_user = User.new(user_data)
    end
  end

  def authenticate_user
    redirect_to login_form_users_path if @current_user.blank?
  end
end
