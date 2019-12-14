Rails.application.routes.draw do
  get 'types/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'sents' , to: 'documents#sents' , as: 'sents'
  # get 'new_sent_document' , to: 'documents#new_sent_document' , as: 'new_sent_document'

  resources :sents , only: [:index , :new, :create, :edit, :update]
  resources :documents
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
