Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'

  get 'about' => 'pages#about'
  devise_for :users
  as :user do
    get "signin" => 'devise/sessions#new'
    get "signup" => 'devise/registrations#new'
    delete "signout"=> 'devise/sessions#destroy'
  end

end
