Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show]
  end
  resources :users, only: [:new, :create, :index, :show]
  resources :posts, only: [:new, :create, :destroy, :index, :show]
  resource :session, only: [:new, :create, :destroy]
end
