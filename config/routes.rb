Rails.application.routes.draw do
  resources :user_restaurants
  resources :user_recipes
  resources :events
  resources :restaurants
  resources :recipes
  resources :users

  post '/login', to: 'login#login'
  get '/profile', to: 'users#profile'
  post '/signup', to: 'users#create'
  
  resources :user do 
    resources :user_recipes
  end 

  resources :user do 
    resources :user_restaurants
  end 

  resources :user do 
    resources :events
  end 

end
