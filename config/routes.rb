Rails.application.routes.draw do
  root controller: :articles, action: :index
  # resources :articles, except: [:index, :new, :create, :show, :edit, :update]
  resources :articles, except: [:delete]
end
