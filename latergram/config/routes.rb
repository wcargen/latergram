Latergram::Application.routes.draw do

  get "photos/index"

  devise_for :users

  root to: "hashtags#index"

  resources :users, :hashtags
end
