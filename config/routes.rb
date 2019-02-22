Rails.application.routes.draw do
  resources :tours
  root to: 'users#new'
  get 'sessions/new'
  resources :users
  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/tour' => 'tours#new'

  post '/tour' => 'tours#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  post '/users/menu'
  #
  get '/users/menu'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
