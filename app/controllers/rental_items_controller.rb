class RentalItemsController < ApplicationController
  skip_before_action :authenticate_user, only: [:index, :show, :enquire_form]
  before_action :set_params, only: :show

  def index
    fetch_rental_items

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    fetch_rental_item

    respond_to do |format|
      format.html
    end
  end

  def enquire_form

    respond_to do |format|
      format.html
    end
  end

  def book_form

    respond_to do |format|
      format.html
    end
  end

  private

  def fetch_rental_items
    response      = post_request('rentalitem', rental_item_params.to_h)
    response_body = JSON.parse(response.response_body)
    if response_body.present?
      @rental_items = response_body
      @rental_items = @rental_items.uniq { |item| item['ItemBrand'] }
    end
  end

  def fetch_rental_item
    response      = post_request('rentalitem', rental_item_params.to_h)
    response_body = JSON.parse(response.response_body)
    if response_body.present?
      @rental_item = response_body.first
    end
  end

  def set_params
    params[:rentalitemid] = params.permit(:id)[:id]
  end

  def rental_item_params
    params.permit(:rentalitemid, :itembrand, :itemgroup)
  end
end
