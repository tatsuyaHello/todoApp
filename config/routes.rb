Rails.application.routes.draw do
  get 'sessions/new'
  root 'homepage#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :tasks
  resources :users

end
