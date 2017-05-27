Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

  resources :items do
    resources :comments
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
end
