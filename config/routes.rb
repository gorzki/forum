Rails.application.routes.draw do
  devise_for :users
  get '/index' => 'home#index'
  root :to =>  'home#index'
  resources :users
  resources :messages


end
