Rails.application.routes.draw do
  get 'types/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :documents
  resources :folders
  resources :types
  devise_scope :user do
    authenticated :user do
      root 'documents#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
