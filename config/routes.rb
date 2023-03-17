Rails.application.routes.draw do
  resources :failure_modes
  resources :equip_functions
  resources :things
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "things#index"
end
