Rails.application.routes.draw do
  resources :timeslots
  devise_for :users
  root to: 'users#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
