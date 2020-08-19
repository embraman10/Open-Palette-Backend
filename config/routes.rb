Rails.application.routes.draw do
<<<<<<< HEAD
  resources :users
  resources :user_palettes
=======
  resources :palettizers
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212
  resources :background_color_changers
  namespace :api do 
    namespace :v1 do
        resources :colorizers 
    end
  end
  
<<<<<<< HEAD
=======
  resources :users
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
