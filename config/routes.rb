Rails.application.routes.draw do
  get 'collaborators/new'

  # get 'charges/new'
  #
  # get 'charges/create'
  #
  # get 'charges/edit'

  # get "wikis/index"
  #
  # get "wikis/show"
  #
  # get "wikis/new"
  #
  # get "wikis/edit"

  devise_for :users

  resources :wikis

  resource :charges, only: [:new, :create, :edit]

  resources :wikis do
    resources :collaborators, only: [:new, :create, :destroy]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
