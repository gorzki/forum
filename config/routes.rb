Rails.application.routes.draw do
  devise_for :users
  get '/index' => 'home#index'
  root :to =>  'home#index'
  get '/messages/:id/respond' => "messages#respond", as: "message_respond"
  resources :users
  resources :messages
  post '/message' => "messages#respond_create"
  resources :boards do
    resources :posts
    get 'posts/:id/edit_ajax' => "posts#edit_ajax", as: "post_edit_ajax"
  end
  resources :user_to_boards
end
