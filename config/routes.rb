Rails.application.routes.draw do


  get 'sessions/new'

  get 'users/new'

  resources :users
  resources :login
  resources :articles
  resources :allegro
  root 'welcome#index'
end
