# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :greetings
    end
  end
  root 'root#index'
  resources :greetings, only: [:index]
end
