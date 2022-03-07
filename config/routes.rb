Rails.application.routes.draw do

  root "home#index"
  devise_for :users

  devise_scope :users do 
    get "users", to: "devise/sessions#new"
  end


  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
