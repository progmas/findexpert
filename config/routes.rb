Rails.application.routes.draw do
  root 'home#index'

  resources :universities
  resources :experts
  resources :expertises
  resources :cities
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
