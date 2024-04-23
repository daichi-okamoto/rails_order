# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  resources :orders, only: %i[new create] do
    post 'confirm', on: :collection
    get :complete, on: :collection
  end

  mount Sidekiq::Web, at: '/sidekiq'
end
