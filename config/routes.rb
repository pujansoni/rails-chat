Rails.application.routes.draw do
  devise_for :users

  root controller: :channels, action: :index

  resources :channel_messages
  resources :channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
