Rails.application.routes.draw do
  resources :user_cards
  resources :users
  resources :randomizers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
