# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /en|ru/ do
    get 'dashboard/report'

    devise_for :users, skip: [:sessions]
    unauthenticated do
      as :user do
        get '', to: 'devise/sessions#new', as: :new_user_session
        post '', to: 'devise/sessions#create', as: :user_session
      end
    end

    authenticated do
      as :user do
        delete '', to: 'devise/sessions#destroy', as: :destroy_user_session
      end
    end

    authenticate :user, ->(u) { u.is_admin == true } do
      resources :checks
      resources :people
      resources :organizations
      resources :reports
      resources :inspectors
    end

    resources :checks, only: %i[index show]
    resources :people, only: %i[index show]
    get 'dashboard/index'
    get 'dashboard/info'

    root 'dashboard#index'
    resources :organizations, only: %i[index show]
    resources :reports, only: %i[index show]
    resources :inspectors, only: %i[index show]
  end
end
