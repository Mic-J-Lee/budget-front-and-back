Rails.application.routes.draw do
  get 'daniel/index'
  get 'daniel/login'
  get 'daniel/register'
  
  get 'budget_tables/new'

  get 'items/new'

  get 'categories/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get 'register', to: 'users#new', as: 'register'
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

