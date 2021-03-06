Rails.application.routes.draw do
  get 'items/new'

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  get 'welcome/index'
  root 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
