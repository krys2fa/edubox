Rails.application.routes.draw do

  resources :programmes
  resources :colleges
  resources :faculties
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  devise_scope :user do
    #root 'devise/sessions#new'
    get '/customers/:id', :to => 'customers#show', as: 'customer'
    get '/agents/:id', :to => 'agents#show', as: 'agent'
  end

  resources :documents, :applications, :institutions

  get 'dashboard' => 'dashboard#index'
  get 'agents' => 'agents#index'
  get 'customers' => 'customers#index'
  get 'pending' => 'applications#pending'


  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
