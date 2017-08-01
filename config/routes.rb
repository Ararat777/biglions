Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#main'
  get '/about' => "pages#about"
  get '/contacts' => "pages#contacts"
  get '/services' => "pages#services"
  get '/services/:category' => "pages#services",as: 'services_category'
  get '/services/:category/:sub_category' => "pages#services",as: 'services_sub_category'
  
end
