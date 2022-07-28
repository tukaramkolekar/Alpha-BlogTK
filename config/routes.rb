Rails.application.routes.draw do

  root 'application#hello'
  resources :articles
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
