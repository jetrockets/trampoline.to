# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    get 'sign_in', to: 'user_sessions#new'

    root to: "events#index"
    # get "/", to "events#index"

    resources :events
    resources :speakers
    resources :slots
    resources :dashboard, only: [:index]
  end

  root to: 'home#index'

  resources :events, only: [:index, :show]
  resources :speakers, only: [:index, :show]
end
