Rails.application.routes.draw do

  root          'home#index'

  resources     :contacts,    only: [:new, :create]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
