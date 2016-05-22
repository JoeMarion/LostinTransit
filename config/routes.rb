Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'forums#index'

  get    'signup' => 'users#new'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
end
