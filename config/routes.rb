Rails.application.routes.draw do

  match '/*path', to: 'application#cors_preflight_check', via: :options
  resources :sections, only: [ :create, :update, :destroy, :show, :index ]
end
