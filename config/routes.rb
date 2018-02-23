Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]

  root to: "cocktails#index"
end
