Rails.application.routes.draw do
  devise_for :staffers, controllers: { sessions: 'admin/sessions', registrations: 'admin/admins' }
  root 'photos#index'

  resource :biography
  resource :contact
  resources :photos
  resources :videos
  resources :news
  resources :webs

  namespace :ajax do
    get 'add_star'
  end

  namespace :admin do
    root 'welcome#index'
    resource :biography
    resources :photos
    resources :videos
    resources :news
    resources :webs
  end

end
