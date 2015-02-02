Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root    'about#index'
  get     'about/index'
  get     'about/faq'
  get     'contacts/index'

end
