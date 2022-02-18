# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :events, only: [:index, :show]
  resources :speakers, only: [:index, :show]
end
