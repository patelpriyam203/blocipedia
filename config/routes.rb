Rails.application.routes.draw do
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

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
