Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA-related routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Setting up Customer routes as per Step 8
  resources :customers, only: [:index] do
    collection do
      get "alphabetized", to: "customers#alphabetized"
      get "missing_email", to: "customers#missing_email"
    end
  end

  # Setting the root path to customers#index
  root "customers#index"
end
