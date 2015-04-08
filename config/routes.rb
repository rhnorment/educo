Rails.application.routes.draw do

  root    'pages#home'

  get     '/about',                                     to:  'pages#about'

  get     '/about/leadership',                          to:  'pages#leadership'

  get     '/about/investors',                           to: 'pages#investors'

  get     '/about/foundation',                          to:  'pages#foundation'

  get     '/about/faculty',                             to:  'pages#faculty'

  get     '/about/faq',                                 to:  'pages#faq'

  get     '/about/accreditation',                       to:  'pages#accreditation'

  get     '/journey',                                   to:  'pages#journey'

  get     '/journey/term1',                             to: 'pages#term1'

  get     '/journey/term2',                             to:  'pages#term2'

  get     '/journey/term3',                             to: 'pages#term3'

  get     '/journey/term4',                             to:  'pages#term4'

  get     '/seeking_truth',                             to:  'pages#seeking_truth'

  get     '/seeking_truth/pedagogy',                    to:  'pages#pedagogy'

  get     '/seeking_truth/curriculum',                  to:  'pages#curriculum'

  get     '/seeking_truth/courses',                     to:  'pages#courses'

  get     '/seeking_truth/courses/:id',                 to:  'pages#course',              as: 'course'

  get     '/building_character',                        to:  'pages#building_character'

  get     '/building_character/residential_living',     to:  'pages#residential_living'

  get     '/building_character/experiential_learning',  to:  'pages#experiential_learning'

  get     '/building_character/sacrificial_loving',     to:  'pages#sacrificial_loving'

  get     '/admissions',                                to:  'pages#admissions'

  get     '/admissions/student_attributes',             to:  'pages#student_attributes'

  get     '/admissions/admin_process',                  to:  'pages#admin_process'

  get     '/admissions/tuition',                        to:  'pages#tuition'

  get     '/admissions/financial_aid',                  to:  'pages#financial_aid'

  get     '/admissions/apply_now',                      to:  'pages#apply_now'

  get     '/404',                                       to:    'errors#not_found'
  get     '/422',                                       to:    'errors#unprocessable'
  get     '/500',                                       to:    'errors#server_error'

  resources   :contacts,      only: [:new, :create]
  resources   :subscriptions, only: :create

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
