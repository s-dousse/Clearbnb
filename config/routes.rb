Rails.application.routes.draw do
  namespace :host do
    resources :listings
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root 'static_pages#home'
end
