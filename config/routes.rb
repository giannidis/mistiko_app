Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :secrets

  resources :posts
  
  root 'secrets#new'

  map.sitemap '/sitemap.xml', :controller => 'sitemap'
end
