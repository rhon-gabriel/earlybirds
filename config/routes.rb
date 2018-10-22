Rails.application.routes.draw do
  get 'api_news/index'
  root controller: :articles, action: :index

  namespace :admin do
    root controller: :dashboard, action: :index
    resources :articles, only: %i[new create index update third_party]
  end
end
