Rails.application.routes.draw do
  resources :stations
  resources :properties
  root 'properties#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
