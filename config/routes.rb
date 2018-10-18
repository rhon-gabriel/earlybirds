Rails.application.routes.draw do
  root controller: :articles, action: :index
  namespace :admin do
    resources :articles, only: [:edit, :index]
  end
end