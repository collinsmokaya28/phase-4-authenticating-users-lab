Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  get "/me", to: "user#show"


end 
