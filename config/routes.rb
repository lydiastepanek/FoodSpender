Rails.application.routes.draw do
  root :to => 'root#root'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show, :index]
    resources :likes, only: [:update, :destroy, :create]
    resources :comments, only: [:update, :create, :destroy]
    resources :posts, only: [:new, :create, :destroy, :index, :show]
  end
  resources :users, only: [:new, :create, :index, :show] do
    resources :friendships, only: [:create, :destroy]
  end
  resource :session, only: [:new, :create, :destroy]
end
