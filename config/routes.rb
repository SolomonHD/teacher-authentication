Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'teachers#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :teachers

  get 'page/index'
  root 'page#index'
end
