Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#main'
  resources :projects,only: [:new,:create]
  resources :tariffs,only: [:show]
  resources :reviews,only: [:index,:show,:create,:update]
  resources :cases,only: [:index,:show]
  get '/about' => "pages#about"
  get '/contacts' => "pages#contacts"
  get '/services' => "pages#services"
  get '/services/:category' => "pages#services",as: 'services_category'
  get '/services/:category/:sub_category' => "pages#services",as: 'services_sub_category'
  
  
end
