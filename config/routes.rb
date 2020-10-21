Rails.application.routes.draw do
  # devise_for :admins, controllers: {
  #   sessions: 'admins/sessions'
  # }
  devise_for :users
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :edot, :show]
end
