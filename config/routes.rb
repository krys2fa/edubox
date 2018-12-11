Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  # devise_scope :user do
  #   root 'devise/sessions#new'
  # end


  resources :documents
  resources :applications
  # root 'devise/sessions#new'
  root 'applications#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
