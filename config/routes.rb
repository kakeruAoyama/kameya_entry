Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :users
  get 'entries/create'
  get 'top/index'
  root 'top#index'
end
