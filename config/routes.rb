Rails.application.routes.draw do
  namespace :host do
    resources :listings
  end

  devise_for :users

  root 'static_pages#home'
end
