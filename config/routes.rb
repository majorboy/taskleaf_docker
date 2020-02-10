Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks

  namespace :admin do
    resources :users
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  
end
