Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'greetings/index'
    end
  end
  
  root "greetings#index"
  resources :greetings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
