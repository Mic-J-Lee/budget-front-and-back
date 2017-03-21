Rails.application.routes.draw do
<<<<<<< HEAD
  get 'daniel/index'
=======
  get 'budget_tables/new'

  get 'items/new'

  get 'categories/new'

  get 'users/new'
>>>>>>> 7ec0cfc7edeaa23e1fa90e3a5034d56a2fbb8c8b

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dashboard
  resources :login
end
