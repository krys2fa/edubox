Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'

  resources :documents
  resources :applications
  root 'home#index'
  #root 'applications#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
