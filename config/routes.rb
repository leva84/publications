# frozen_string_literal: true

Rails.application.routes.draw do
  resources :publication_cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'publication_cards#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
