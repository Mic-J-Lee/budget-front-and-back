Rails.application.routes.draw do
  root to: "home#index"
  get    '/register',  to: 'user#new'
  get    '/login',   to: 'home#new'
  post   '/login',   to: 'home#create'
  delete '/logout',  to: 'home#destroy'
  resources :users do
    resources :budgets do
      resources :items
    end
  end
resources :categories
end

