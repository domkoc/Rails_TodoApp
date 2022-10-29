Rails.application.routes.draw do
  devise_for :users
  resources :todos do
    get 'done', on: :collection
  end

  get 'users/new'
  post 'users/create'

  root 'home#index'
  get 'home/login'
end
