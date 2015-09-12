Rails.application.routes.draw do
  devise_for :users
  root to: "homes#show"
  resource  :home

  resources :classifieds

  resources :organizations do
    resources :donations
    resources :positions
    resources :surveys
  end

  resources :users do
    resources :classifieds
  end

end
