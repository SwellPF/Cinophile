Rails.application.routes.draw do
  root 'application#hello'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  
  resources :user_movies
  resources :genres
  resources :users
  resources :comments
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
