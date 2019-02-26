Rails.application.routes.draw do
  # get 'static_pages/home'
  # get 'static_pages/about'
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  resources :pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
