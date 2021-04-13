class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:login_form, :login]

  def login_form
    redirect_to account_details_users_path if @current_user.present?

    respond_to do |format|
      format.html
    end
  end

  def login
    request_params = set_login_params
    response       = post_request('login', request_params)
    response_body  = JSON.parse(response.response_body)
    if response.response_code == 200
      company_response      = post_request('Company', { rocno: response_body['ROC'] })
      company_response_body = JSON.parse(company_response.response_body).first
      final_response        = company_response_body.merge(response_body)
      final_response['CompanyName'] = company_response_body['Name']
      session[:current_user_data]   = final_response
      redirect_to account_details_users_path
    end
  end

  def logout
    session.delete(:current_user_data)
    redirect_to root_path
  end

  # def register_form

  #   respond_to do |format|
  #     format.html
  #   end
  # end

  def account_details

    respond_to do |format|
      format.html
    end
  end

  def staff_members
    response       = post_request('CompanyStaff', { companyid: @current_user.roc_nos })
    @staff_members = JSON.parse(response.response_body) if response.response_code == 200

    respond_to do |format|
      format.html
    end
  end

  def ongoing_rental_contracts
    response          = post_request('RentalContract/Ongoing', { custcode: @current_user.roc })
    @rental_contracts = JSON.parse(response.response_body) if response.response_code == 200

    respond_to do |format|
      format.html
    end
  end

  def rental_history
    response          = post_request('RentalContract/History', { custcode: @current_user.roc })
    @rental_contracts = JSON.parse(response.response_body) if response.response_code == 200

    respond_to do |format|
      format.html
    end
  end

  def billing_history
    response            = post_request('Invoice', { custcode: @current_user.roc })
    @billing_histories  = JSON.parse(response.response_body) if response.response_code == 200

    respond_to do |format|
      format.html
    end
  end

  private

  def set_login_params
    request_params = {}
    request_params[:transid]    = SecureRandom.hex(8)
    request_params[:input]      = Base64.encode64("#{login_params[:email]}#{API_KEY_VALUE}#{login_params[:password]}")
    request_params[:companyroc] = login_params[:companyroc]
    request_params
  end

  def login_params
    params.permit('email', 'password', 'companyroc')
  end
end
