Rails.application.routes.draw do
  root controller: :articles, action: :index
  # resources :articles, only: [:index, :new, :create, :show, :edit, :update]
  resources :articles, except: [:delete]
  resources :comments, only: [:create]
end
