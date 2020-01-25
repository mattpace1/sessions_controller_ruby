Rails.application.routes.draw do
  root 'sessions#welcome'
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#welcome'
  post 'logout', to: 'sessions#logout'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  get 'active', to: 'sessions#active'
  get 'timeout', to: 'sessions#timeout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
