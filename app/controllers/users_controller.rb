class UsersController < ApplicationController

  def login_form

    respond_to do |format|
      format.html
    end
  end

  def register_form

    respond_to do |format|
      format.html
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :nationality,
      :account_type,
      :nric,
      :address,
      :date_of_birth,
      :gender,
      :password
    )
  end
end
