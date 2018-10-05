Rails.application.routes.draw do
  root 'pages#index'

  resources :users
  resources :charges

  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/gaming' => 'pages#gaming'
  get '/mediacenter' => 'pages#media'
  get '/workstation' => 'pages#workstation'
  get '/general' => 'pages#general'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
