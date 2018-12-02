require 'sidekiq/web'

Rails.application.routes.draw do

  resources :books do
    member do
      put "add", to: "books#library"
      put "remove", to: "books#library"
    end
  end
  resources :library, only:[:index]
  resources :pricing, only:[:index]

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'books#index'
  resources :subscriptions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
