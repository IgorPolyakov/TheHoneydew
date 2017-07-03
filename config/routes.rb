Rails.application.routes.draw do
  devise_for :users

  authenticate :user, lambda {|u| u.is_admin == true} do
    resources :checks
    resources :people
    resources :organizations
    resources :reports
    resources :inspectors
  end

  resources :checks, only: [:index,:show]
  resources :people, only: [:index,:show]
  get 'dashboard/index'

  root 'dashboard#index'
  resources :organizations, only: [:index,:show]
  resources :reports, only: [:index,:show]
  resources :inspectors, only: [:index,:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
