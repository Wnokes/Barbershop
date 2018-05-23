Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :contact_infos
  get 'pages/home'

  resources :portfolios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'pages#home'

end
