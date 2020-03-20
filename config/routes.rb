# frozen_string_literal: true

Rails.application.routes.draw do
  get 'customers/alphabetized', to: 'customers#alphabetized', as: '/customers/alphabetized'
  get 'customers/missing_email', to: 'customers#missing_email', as: '/customers/missing_email'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources 'customers', only: %i[index show alphabetized missing_email]

  # Get /
  root to: 'customers#index'
end
