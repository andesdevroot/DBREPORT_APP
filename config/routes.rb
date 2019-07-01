Rails.application.routes.draw do
  resources :mantenciondesviacions
  resources :mantencioncorrectivas
  get 'pages/info'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :mantencionaves
  resources :equipos
  resources :sectors
  resources :areas
  
  get "pages/info"
  root to: redirect('pages/info')


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
