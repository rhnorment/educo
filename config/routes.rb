Rails.application.routes.draw do

  root          'site_pages#home'

  get           '/about',                   to: 'site_pages#about'

  get           '/academics',               to: 'site_pages#academics'
  get           '/academics/christianly',   to: 'site_pages#christianly'
  get           '/academics/sequentially',  to: 'site_pages#sequentially'
  get           '/academics/communally',    to: 'site_pages#communally'
  get           '/academics/globally',      to: 'site_pages#globally'
  get           '/academics/critically',    to: 'site_pages#critically'
  get           '/academics/classically',   to: 'site_pages#classically'
  get           '/academics/socratically',  to: 'site_pages#socratically'
  get           '/academics/holistically',  to: 'site_pages#holistically'

  get           '/student_life',            to: 'site_pages#student_life'
  get           '/student_life/gallery',    to: 'site_pages#gallery'

  get           '/admissions',              to: 'site_pages#admissions'
  get           '/admissions/apply_now',    to: 'site_pages#apply_now'

  resources     :gallery_photos,            path: '/gallery',  only: [:index]
  resources     :visits,                    only: [:new, :create], path_names: { new: 'request_visit' }
  resources     :leads,                     path: '/students', only: [:new, :create]
  resources     :contacts,                  only: [:new, :create]
  resources     :events,                    only: [:index, :show]

  get           '/404',                     to: 'errors#not_found'
  get           '/422',                     to: 'errors#unprocessable'
  get           '/500',                     to: 'errors#server_error'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
