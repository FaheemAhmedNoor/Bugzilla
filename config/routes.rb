Rails.application.routes.draw do

  get '/home', to: 'users#home'
  # get 'users/home'

  get '/login', to: 'users#login'
  # get 'users/login'

  get '/signup', to: 'users#signup'
  # get 'users/signup'

  root 'users#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'sessions/new'

  get '/login', to:'sessions#new'
  post '/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
