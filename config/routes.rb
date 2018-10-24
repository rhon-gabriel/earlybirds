Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index

  namespace :admin do
    root controller: :dashboard, action: :index
    resources :articles, only: %i[new create index update edit]
  end
end
