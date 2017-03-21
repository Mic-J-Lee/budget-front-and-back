Rails.application.routes.draw do
  get 'daniel/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dashboard
  resources :login
end
