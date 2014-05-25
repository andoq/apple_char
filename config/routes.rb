Rails.application.routes.draw do
  resources :recipes, only: [:show, :index]

  devise_for :users

  root 'recipes#index'
end
