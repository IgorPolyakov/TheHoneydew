Rails.application.routes.draw do
  devise_for :users
  resources :checks
  resources :people
  get 'dashboard/index'

  root 'dashboard#index'
  resources :organizations
  resources :reports
  resources :inspectors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do get '/sign_in' => 'devise/sessions#new' end

end
