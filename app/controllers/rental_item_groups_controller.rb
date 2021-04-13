class RentalItemGroupsController < ApplicationController
  skip_before_action :authenticate_user, only: [:index]

  def index
    fetch_rental_item_groups

    respond_to do |format|
      format.js
    end
  end

  private

  def fetch_rental_item_groups
    response      = post_request('itemGroup', {})
    response_body = JSON.parse(response.response_body)
    if response.response_code == 200
      @rental_item_groups = []
      @rental_item_groups << { 'ItemGroup' => 'All', 'Description' => '' }
      @rental_item_groups += response_body
    end
  end
end
