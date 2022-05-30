Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "pages#home"
  get '/pages', to: "pages#home"

  #define routes for active job basics
  namespace :api do
    namespace :v1 do
      resources :users
      get '/job_email', to: "users#job_email"
      get '/job_later', to: "users#job_later"
    end
  end
end
