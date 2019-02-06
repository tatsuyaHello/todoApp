Rails.application.routes.draw do
  root 'homepage#home'
  get '/signup' => 'users#new'

  resources :tasks
  resources :users

end
