Rails.application.routes.draw do
  
  resources :users, only: [:create, :show, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end