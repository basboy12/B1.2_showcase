Rails.application.routes.draw do

  root 'landingpage#index'

  get 'showcase' => 'home#index'
  resources :projects
  resources :articles
  resources :contacts, only: [:index, :create]
  get 'contact' => 'contact#index', as: :contact

  # get 'admin/article' => 'articles#admin', as: :admin/article
  # get 'admin/project' => 'projects#admin', as: :admin
end
