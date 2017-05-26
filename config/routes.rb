Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#show'
  delete '/logout' => 'sessions#destroy', as: 'logout'
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :users, only: :show
  resources :sessions, only: :create
  resources :appearances, only: [:new, :create]
end
