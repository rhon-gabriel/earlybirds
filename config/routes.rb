Rails.application.routes.draw do
  root controller: :articles, action: :index
  namespace :admin do
    resources :articles
  end
end