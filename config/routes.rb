Rails.application.routes.draw do
  devise_for :users
  root 'users#profile'
  get '/users/:user_id', to: 'users#profile', as: :user_profile
  resources :users, only: :index
  get '/users/:id/shared_location/:owned_by', to: 'users#shared', as: :user_shared_location
  post '/locations/:id/share', to: 'locations#share'
end
