Rails.application.routes.draw do
  resources :stories
  root 'stories#index'

  resources :user, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
