Rails.application.routes.draw do
  # get 'users/home'
  get '/home', to: 'users#home'

  # get 'users/login'
  # get '/login', to: 'users#login'

  # get 'users/signup'
  # get '/signup', to: 'users#signup'
  get '/signup', to: 'users#new'


  root 'users#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'sessions/new'

  get '/login', to:'sessions#new'
  post '/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
