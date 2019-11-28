Rails.application.routes.draw do
  resources :favorites
  resources :user_restaurants
  resources :user_recipes
  resources :events
  resources :restaurants
  resources :recipes
  resources :users

  post '/login', to: 'login#login'
  get '/profile', to: 'users#profile'
  post '/signup', to: 'users#create'
  # post 'user/favorites', to: 'users#favorites'
  # post "/user/favorites", to: "favorites#create"
  get 'user/:id/favorites', to: 'users#favorites'
 

  resources :user do 
    resources :events
  end 

  resources :user do 
    resources :favorites
  end 


end
