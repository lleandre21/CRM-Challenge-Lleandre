# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'customers/index'
  # get 'customers/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources 'customers', only: %i[index show]

  root to: 'customers#index'
end
