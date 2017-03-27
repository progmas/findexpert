Rails.application.routes.draw do
  resources :titles
  root 'home#index'
  get 'demo', to: 'home#demo'
  resources :universities
  resources :experts
  resources :expertises
  resources :cities
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
