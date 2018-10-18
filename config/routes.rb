Rails.application.routes.draw do
  root controller: :articles, action: :index
  namespace :admin do
    resources :articles, only: :index
  end
end