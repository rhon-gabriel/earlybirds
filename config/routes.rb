Rails.application.routes.draw do
  root controller: :articles, action: :index
  get '/admin', to: 'articles#admin_index'
  namespace :admin do
    resources :articles, only: :index
  end
end