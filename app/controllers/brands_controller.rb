class BrandsController < ApplicationController

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
    if response_body.present?
      @brands = response_body
    end
  end
end
