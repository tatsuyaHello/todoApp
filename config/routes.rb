Rails.application.routes.draw do
  get 'homepage/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  resources :tasks

  get 'signup' => 'users/new'

end
