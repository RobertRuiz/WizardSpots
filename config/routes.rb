Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :spots
  root   'welcome#index'
  get    'welcome/index'
  get    '/auth/:provider'          => 'omniauth#auth', as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'
  get    '/login' => 'session#new'
  post   '/login' => 'session#create'
  get    '/logout' => 'session#destroy'

  get '/.well-known/acme-challenge/:id' => 'letsencrypt#challenge'
end
