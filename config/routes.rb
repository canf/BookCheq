require 'sidekiq/web'

Rails.application.routes.draw do
  resources :opinions
  post 'images' => 'images#create'
  get 'tags/:tag', to: 'books#index', as: :tag

  get 'images/index'
  get 'images/new'
  get 'images/show'
  resources :books do
    resources :coms
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
