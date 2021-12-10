# frozen_string_literal: true

Rails.application.routes.draw do
  resources :addresses
  resources :citizens
  root to: 'citizens#index'
end
