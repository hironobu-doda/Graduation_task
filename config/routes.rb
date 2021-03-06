Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :copings, only: [:index, :create, :destroy]

  root 'users#index'

  resources :creation_dates, shallow: true do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
          registrations: 'users/registrations'
  }

  resources :users, only: [:show, :index]
end
