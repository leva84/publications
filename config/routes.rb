# frozen_string_literal: true

Rails.application.routes.draw do
  root 'publication_cards#index'

  resources :publication_cards do
    resources :messages
  end
end
