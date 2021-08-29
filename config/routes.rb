Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :users
  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }

  resources :paid_users, only: [:update, :destroy]
  resources :entries, only: [:destroy]
  resources :exits, only: [:destroy]

  post 'exits/create'
  get 'exits/show'
  post 'entries/create'
  get 'entries/show'
  get 'entries/index'
  get 'top/index'
  get 'admins/top'
  root 'top#index'
end
