Latergram::Application.routes.draw do

  devise_for :users

  root to: "photos#index"

  resources :users, :photos
end
