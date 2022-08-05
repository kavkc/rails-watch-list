Rails.application.routes.draw do
  # get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'lists', to: 'lists#index'

  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'

  # get 'lists/:id', to: 'lists#show'
  root to: 'lists#index'

  resources :lists, only: [:new, :create, :show] do
    resources :bookmarks, only: [:new, :create, :show]
  end
  resources :bookmarks, only: [:destroy]
end
