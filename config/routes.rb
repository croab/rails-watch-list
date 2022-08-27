Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
  # get '/bookmarks/:id', to: 'bookmarks#destroy'
  # resources :movies, only: [:index]
end
