Rails.application.routes.draw do
  devise_for :users


  get "up" => "rails/health#show", as: :rails_health_check
  get "/products", to: "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  root "products#index"
end
