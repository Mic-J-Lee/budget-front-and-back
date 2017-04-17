Rails.application.routes.draw do
  resources :incomes
  resources :expenses
  get 'sessions/new'
  post '/', to: 'home#switch_month', as: 'switch_month'

  root to: "home#index"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :budgets
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
