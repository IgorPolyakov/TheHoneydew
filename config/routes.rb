Rails.application.routes.draw do
  resources :people
    get 'dashboard/index'

    root 'dashboard#index'
    resources :checks
    resources :organizations
      resources :reports
    resources :inspectors
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
