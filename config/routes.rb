Rails.application.routes.draw do


  get 'users/new'

  resources :user
  resources :login
  resources :articles
  resources :allegro
  root 'welcome#index'
end
