Rails.application.routes.draw do
  root to: "home#index"
  get    '/register',  to: 'user#new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users do
    resources :budgets do
      resources :items
    end
  end
  resources :categories
  resources :sessions
  resources :dashboard
end

