Rails.application.routes.draw do
  devise_for :cadets, path: 'cadets', :controllers => { :sessions => "cadets/sessions", :registrations => "cadets/registrations" }
  devise_for :users, path: 'users', :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'static_pages#home'
  get  '/signup',  to: 'users#new'
  get  '/shipments/new', to: 'shipments#new'
  resources :shipments
end
