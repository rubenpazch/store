Rails.application.routes.draw do  

  devise_for :users
  #root :to => "services#index"
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :services
  resources :categoriies
  resources :commerces
  post 'search', to: 'commerces#search'
  #get 'list_services', to: 'services#index'
end
