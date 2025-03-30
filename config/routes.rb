Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users, only: [:index, :create]
  get 'users/filter', to: 'users#filter'
end
