Rails.application.routes.draw do
  get 'users/show'

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


# deviseが終わったら下を消して、上のコメントを消すこと
  # resources :copings
  #
  # root 'users#index'
  #
  # resources :creation_dates, shallow: true do
  #   resources :comments
  # end
  #
  # resources :users, only: [:show, :index]
end
