Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#show'

  resources :users, only: [:show, :edit, :update] do
    resources :stores, only: [:index, :show, :new, :create, :edit, :update, :destroy], module: :users
    resources :products, only: [:index, :show, :new, :create, :edit, :update, :destroy], module: :users
  end

  resources :stores, only: [:index, :show]
end
