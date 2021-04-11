Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "rental_items#index"

  resources :users, only: [:new, :create]
  resources :rental_items, only: [:index, :show] do
    member do
      get  :enquire_form
      post :enquire
    end
  end
  resources :brands, only: [:index]
  resources :rental_item_groups, only: [:index]
end
