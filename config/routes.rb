Rails.application.routes.draw do
  devise_for :views
  root 'home#index'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
 
  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new"
  resources :articles
end
