Rails.application.routes.draw do


  resources :articles
  root 'home#index'

  get 'contact' => 'contact#index', as: :contact

  get 'admin' => 'articles#admin', as: :admin
end
