Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "rental_items#index"

  resources :users, only: [] do
    collection do
      get  :login_form
      post :login
      get  :register_form
      get  :forgot_password_form
      post :forgot_password
      get  :account_details
      get  :staff_members
      get  :ongoing_rental_contracts
      get  :rental_history
      get  :billing_history
      get  :breach_of_contracts
      get  :accidents
      delete :logout
    end
  end
  resources :rental_items, only: [:index, :show] do
    member do
      get  :enquire_form
      post :enquire
      get  :book_form
    end
    collection do
      post :submit_enquire
      get  :payment_form
    end
  end
  resources :brands, only: [:index]
  resources :rental_item_groups, only: [:index]
  resources :contracts, only: [] do
    collection do
      get  :service_booking_form
      post :service_booking
    end
  end
end
