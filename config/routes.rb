require 'resque/server'
Rails.application.routes.draw do
  mount Resque::Server, at: '/jobs'

  root 'dashboard#show'

  get 'logout' => 'sessions#destroy', :as => 'logout'
  get 'login' => 'sessions#new', :as => 'login'

  resource :session, only: [:new, :create, :destroy]

  resource :dashboard, controller: :dashboard, only: [:show]
  resources :feedback_entries, only: [:index, :show, :update]
  resource :settings, only: [:show]
end
