Rails.application.routes.draw do
  get 'searchs/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'sents' , to: 'documents#sents' , as: 'sents'
  get 'accept_doc' , to: 'dashboards#accept_doc' , as: 'accept_doc'

  resources :sents , only: [:index , :new, :create, :edit, :update]
  resources :documents
  get 'searchs' , to: 'searchs#index'
  get 'dashboards' , to: 'dashboards#index'
  devise_for :users
  resources :folders
  resources :types
  resources :tracks , only:[:index]
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
