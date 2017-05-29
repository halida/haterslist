Rails.application.routes.draw do

  devise_for :users
  root 'items#index'

  resources :items do
    resources :comments
  end

  namespace :admin do
    resources :tools do
      collection do
        get :memory_leak
      end
    end
  end

  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'

end
