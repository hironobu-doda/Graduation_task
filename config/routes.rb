Rails.application.routes.draw do

  resources :copings

  root 'users#index'

  resources :creation_dates, shallow: true do
    resources :comments
  end
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
          registrations: 'users/registrations'
  }

  resources :users, only: [:show, :index]
end
