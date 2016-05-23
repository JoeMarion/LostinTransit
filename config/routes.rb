Rails.application.routes.draw do
  get 'account_activations/edit'

  get 'sessions/new'

  root to: 'forums#index'

  get    'signup' => 'users#new'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
end
