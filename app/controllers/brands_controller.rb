class BrandsController < ApplicationController
  skip_before_action :authenticate_user, only: [:index]

  def index
    fetch_brands

    respond_to do |format|
      format.js
    end
  end

  private

  def fetch_brands
    response      = post_request('brand', {})
    response_body = JSON.parse(response.response_body)
    if response.response_code == 200
      @brands = []
      @brands << { 'Brand' => 'All', 'Description' => '' }
      @brands += response_body
    end
  end
end
