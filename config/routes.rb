Rails.application.routes.draw do
  resources :users
  resources :user_palettes
  resources :background_color_changers
  namespace :api do 
    namespace :v1 do
        resources :colorizers 
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
