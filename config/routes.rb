Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :todos do
    get 'done', on: :collection
  end

  root "todos#index"
end
