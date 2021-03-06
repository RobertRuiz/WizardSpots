Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :spots do
    member do
      post :order
    end
  end

  root   'pages#welcome'
  get    '/pages/welcome'
  get    '/auth/:provider'          => 'omniauth#auth', as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'
  get    '/login' => 'session#new'
  post   '/login' => 'session#create'
  get    '/logout' => 'session#destroy'
  get    '/pages/spotproviders'
  get    '/pages/howitworks'

  get    '/pages/publix'
  get    '/pages/lube'
  get    '/pages/text'
  get    '/pages/timesheet'
  get    '/pages/facebook'
  get    '/pages/weather'

  get '/.well-known/acme-challenge/:id' => 'letsencrypt#challenge'
end
