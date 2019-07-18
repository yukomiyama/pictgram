Rails.application.routes.draw do
  get 'sessions/new'
  
  root "pages#index"
  get "pages/help"
  
  get     'login', to: 'sessions#new'
  post    'login', to: 'sessions#create'
  delete  'logout', to: 'sessions#destroy'
    
  resources :users
  resources :topics do
    resources :comments
  end
  resources :favorites
  # get 'favorites/index'
  # post 'favorites', to: 'favorites#create'
  # delete 'favorites/:topic_id', to: 'favorites#destroy'
end
