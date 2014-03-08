Poliring::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'application#home'
  ActiveAdmin.routes(self)

  mount Ckeditor::Engine => '/ckeditor'

  resources :contact, only: [:new, :create]
  resources :projects
  resources :posts
  
  match 'gallery' => 'projects#index'
  
  resources :jobs

  match 'about_us' => 'application#about_us'
  match 'services' => 'application#services'
end
