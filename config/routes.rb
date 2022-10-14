Rails.application.routes.draw do
  resources :todos
  get 'users/new'
  post 'users/create'
  get 'home/login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
