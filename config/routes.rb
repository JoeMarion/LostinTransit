Rails.application.routes.draw do
  root to: 'forums#index'

  get 'signup' => 'users#new'
  resources :users
end
