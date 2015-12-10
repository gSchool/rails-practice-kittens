Rails.application.routes.draw do
  root "kittens#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "/categories" => "categories#index", as: :categories
  resources :kittens, only: :index do
    resources :categorizations, :only => [:new, :create]
  end

end
