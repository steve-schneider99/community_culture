Rails.application.routes.draw do
  devise_for :users
  root to: "homes#show"

  resources :classifieds
  resources :points
  resource  :home

  resources :users do
    resources :classifieds
  end




end
