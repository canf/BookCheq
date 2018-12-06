require 'sidekiq/web'

Rails.application.routes.draw do
  post 'images' => 'images#create'

  get 'images/index'
  get 'images/new'
  get 'images/show'
  resources :books do
    member do
      get 'tags/:tag',to: "books#index"

      put "add", to: "books#library"
      put "remove", to: "books#library"
      put "show", to: "books#show"
    end
  end
  resources :library, only:[:index]
  resources :pricing, only:[:index]

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'books#index'
  resources :subscriptions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
