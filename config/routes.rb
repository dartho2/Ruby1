Rails.application.routes.draw do


  get 'sessions/new'

  get 'users/new'

  resources :users
  resources :login
  resources :articles
  resources :allegro
  resources :product
  resources :basket
  resources :basket_detail
  root 'welcome#index'
end
