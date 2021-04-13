Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "rental_items#index"

  resources :users, only: [] do
    collection do
      get  :login_form
      post :login
      get  :register_form
      get  :account_details
      get  :staff_members
      get  :ongoing_rental_contracts
      get  :rental_history
      get  :billing_history
      delete :logout
    end
  end
  resources :rental_items, only: [:index, :show] do
    member do
      get  :enquire_form
      post :enquire
      get  :book_form
    end
  end
  resources :brands, only: [:index]
  resources :rental_item_groups, only: [:index]
end
