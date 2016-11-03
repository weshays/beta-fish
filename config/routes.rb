Rails.application.routes.draw do
  root 'dashboard#show'
  resource :dashboard, controller: :dashboard, only: [:show]
end
