Rails.application.routes.draw do
  get 'daniel/index'
  get 'daniel/login'
  get 'daniel/register'
  
  get 'budget_tables/new'

  get 'items/new'

  get 'categories/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dashboard
end
