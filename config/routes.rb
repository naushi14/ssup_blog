Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
  # post 'users', to: 'user#create'
  resources :users, except: [:new]
end
