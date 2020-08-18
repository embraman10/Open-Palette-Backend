Rails.application.routes.draw do
  resources :background_color_changers
  resources :font_changers
  namespace :api do 
    namespace :v1 do
        resources :colorizers 
    end
  end
  
  resources :user_cards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
