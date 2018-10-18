Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :admin, only: :index
    namespace :admin do
      resources :articles, only: :index
    end
end