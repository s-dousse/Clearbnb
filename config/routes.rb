Rails.application.routes.draw do
  namespace :host do
    resources :listings
    # get 'listings/new'
    # get 'listings/edit'
    # get 'listings/index'
    # get 'listings/show'
  end
  devise_for :users
  # get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end