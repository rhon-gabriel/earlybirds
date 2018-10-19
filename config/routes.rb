# frozen_string_literal: true

Rails.application.routes.draw do
  root controller: :articles, action: :index

  namespace :admin do
    root controller: :dashboard, action: :index
    resources :articles, only: %i[new create]
  end
end
