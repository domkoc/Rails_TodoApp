Rails.application.routes.draw do
  resources :todos do
    get 'done', on: :collection
  end

  get 'users/new'
  post 'users/create'
  root 'home#login'
  get 'home/login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
