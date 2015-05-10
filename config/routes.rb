Rails.application.routes.draw do

  root          'site_pages#home'

  get           '/about',           to: 'site_pages#about'

  resources     :contacts,          only: [:new, :create]

  get           '/404',             to: 'errors#not_found'
  get           '/422',             to: 'errors#unprocessable'
  get           '/500',             to: 'errors#server_error'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
