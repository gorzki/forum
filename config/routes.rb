Rails.application.routes.draw do
  devise_for :users
  get '/index' => 'home#index'
  root :to =>  'home#index'
  get '/messages/:id/respond' => 'messages#respond', as: "message_respond"
  resources :users
  resources :messages
  post '/message' => "messages#respond_create"
  resources :boards do
    resources :posts
    
  end

end
