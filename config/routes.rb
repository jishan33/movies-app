Rails.application.routes.draw do
  resources :movies
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
end


