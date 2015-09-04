Rails.application.routes.draw do
  devise_for :users
  root to: "classifieds#index"

  resources :classifieds

  resources :users do
    resources :classifieds
  end

  resources :points

end
