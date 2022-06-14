Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  root 'messages#index'
  resources :messages, only: %i(index create)
end
