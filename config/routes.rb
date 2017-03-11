Rails.application.routes.draw do
  resources :organizations
  resources :people
  resources :reports
  resources :inspectors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
