Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

  resources :items
  resources :comments

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
end
