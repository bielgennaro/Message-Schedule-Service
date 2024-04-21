Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :messages
    resources :auth
  end
end
