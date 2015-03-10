Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show]
  end
  resources :users, only: [:new, :create, :index] do
    resources :posts, only: [:new]
  end
  resource :session, only: [:new, :create, :destroy]
end
