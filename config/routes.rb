Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :user, controllers: {
    sessions: 'user/sessions',
    passwords: 'user/passwords',
    registrations: 'user/registrations'
  }
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations'
  }

  post 'exits/create'
  get 'exits/show'
  post 'entries/create'
  get 'entries/show'
  get 'entries/index'
  get 'top/index'
  get 'admins/top'
  root 'top#index'
end
