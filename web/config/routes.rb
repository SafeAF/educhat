Rails.application.routes.draw do
  get 'conversations/show'
  get 'home/index'
  root 'home#index'
  resources :users

  resources :conversations do
    resources :messages
  end

  # Websockets route
  mount ActionCable.server => '/cable'
end

