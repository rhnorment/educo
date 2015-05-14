Rails.application.routes.draw do

  root          'site_pages#home'

  get           '/about',                   to: 'site_pages#about'

  get           '/academics',               to: 'site_pages#academics'
  get           '/academics/christianly',   to: 'site_pages#/academics/christianly'
  get           '/academics/sequentially',  to: 'site_pages#/academics/sequentially'
  get           '/academics/communally',    to: 'site_pages#/academics/communally'
  get           '/academics/globally',      to: 'site_pages#/academics/globally'
  get           '/academics/critically',    to: 'site_pages#/academics/critically'
  get           '/academics/classically',   to: 'site_pages#/academics/classically'
  get           '/academics/socratically',  to: 'site_pages#/academics/socratically'
  get           '/academics/hoistically',   to: 'site_pages#/academics/holistically'

  get           '/student_life',            to: 'site_pages#student_life'

  get           '/admissions',              to: 'site_pages#admissions'
  get           '/admissions/apply_now',    to: 'site_pages#/admissions/apply_now'

  get           '/college-core',            to: 'landing_pages#student'
  get           '/eight-ways',              to: 'landing_pages#eight_ways'

  resources     :leads,                     only: [:new, :create]
  resources     :contacts,                  only: [:new, :create]

  get           '/404',                     to: 'errors#not_found'
  get           '/422',                     to: 'errors#unprocessable'
  get           '/500',                     to: 'errors#server_error'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
