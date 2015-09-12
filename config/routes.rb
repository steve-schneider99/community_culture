Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"
  resource  :home do
    member do
      get 'about_us', to: 'home#about_us'
    end
  end

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
