Rails.application.routes.draw do
  resources :favorite_places
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
  get 'user/:id/favorite_places', to: 'users#favorite_places'
  get 'user/:id/events', to: 'users#events'
 

  resources :user do 
    resources :events
  end 

  resources :user do 
    resources :favorites
  end 

  resources :user do 
    resources :favorite_places
  end

  

end
