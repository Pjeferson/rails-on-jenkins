Rails.application.routes.draw do
  root 'rails/welcome#index'
  resources :users
end
