Rails.application.routes.draw do
  resources :movies
  devise_for :users, controllers: { registrations: "users/registrations" }

  get '/users_list', to: 'users#index', as: 'users_list'
  delete '/users_list/:id', to: 'users#destroy'
  
  root to: 'pages#home'
end


