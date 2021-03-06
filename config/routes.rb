Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'show/show'
  resources :search
  resources :home
  resources :carts
  resources :orders, only: [:index,:create ,:delete]


  get 'about', to: 'home#about', as: :about
  get 'contact',to: 'home#contact',as: :contact
  get 'checkout', to: 'home#checkout'




  root to: 'home#index'


end
