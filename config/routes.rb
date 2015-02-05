Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root    'about#index'
  get     'about/index'
  get     'about/faq'
  get     'about/leadership'
  get     'admissions/apply_now'
  get     'contacts/index'

end
