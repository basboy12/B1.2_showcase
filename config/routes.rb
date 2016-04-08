Rails.application.routes.draw do


  resources :articles
  resources :contacts, only: [:index, :create]
  root 'home#index'

  get 'contact' => 'contact#index', as: :contact

  get 'admin' => 'articles#admin', as: :admin
end
