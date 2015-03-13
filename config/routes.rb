Rails.application.routes.draw do
  root :to => 'root#root'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show, :index]
    resources :posts, only: [:new, :create, :destroy, :index, :show] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create, :destroy]
    end
  end
  resources :users, only: [:new, :create, :index, :show] do
    resources :friendships, only: [:create, :destroy]
  end
  # resources :posts, only: [:new, :create, :destroy, :index, :show] do
  #   resources :comments, only: [:new, :create, :destroy]
  #   resources :likes, only: [:create, :destroy]
  # end
  resource :session, only: [:new, :create, :destroy]
end
