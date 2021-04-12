Rails.application.routes.draw do
  root 'application#hello'
  get 'auth/:provider/callback' => 'sessions#omniauth'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post 'watchlists/add_to_watchlist' => 'watchlists#add_to_watchlist'
  
  resources :user_movies
  resources :genres
  resources :users do
    resources :watchlists
    end
  resources :watchlists
  resources :movies do 
    resources :comments, only: [:index, :show]
  end
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
