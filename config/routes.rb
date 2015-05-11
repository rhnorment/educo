Rails.application.routes.draw do

  root          'site_pages#home'

  get           '/about',           to: 'site_pages#about'
  get           '/academics',       to: 'site_pages#academics'
  get           '/student_life',    to: 'site_pages#student_life'
  get           '/admissions',      to: 'site_pages#admissions'
  get           '/apply_now',       to: 'site_pages#apply_now'

  get           '/student',         to: 'landing_pages#student'
  get           '/parent',          to: 'landing_pages#parent'

  resources     :leads,             only: [:new, :create]
  resources     :contacts,          only: [:new, :create]

  get           '/404',             to: 'errors#not_found'
  get           '/422',             to: 'errors#unprocessable'
  get           '/500',             to: 'errors#server_error'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
