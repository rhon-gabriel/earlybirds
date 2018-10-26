Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index
  resources :api_news, only: :index
  resources :subscriptions, only: [:new, :create]


  namespace :admin do
    root controller: :dashboard, action: :index
    resources :articles, only: %i[new create index update edit]
  end

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks], controllers: {
      sessions: 'api/sessions',
      registrations: 'api/registrations'
    }
  end
end
