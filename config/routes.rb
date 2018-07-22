Rails.application.routes.draw do
  require 'sidekiq/web'

  root 'things#index'
  resources :things, only: [:index, :new, :create]
  mount Sidekiq::Web => '/sidekiq'
end
