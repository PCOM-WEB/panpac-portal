class RentalItemsController < ApplicationController

  def index
    fetch_rental_items

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def fetch_rental_items
    response      = post_request('rentalitem', rental_item_params.to_h)
    response_body = JSON.parse(response.response_body)
    if response_body.present?
      @rental_items = response_body
    end
  end

  def rental_item_params
    params.permit(:rentalitemid, :itembrand, :itemgroup)
  end
end
