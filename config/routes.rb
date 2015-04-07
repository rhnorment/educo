Rails.application.routes.draw do

  root    'pages#home'

  get     '/about'                                    =>  'pages#about'

  get     '/about/leadership'                         =>  'pages#leadership'

  get     '/about/investors'                          =>  'pages#investors'

  get     '/about/foundation'                         =>  'pages#foundation'

  get     '/about/faculty'                            =>  'pages#faculty'

  get     '/about/faq'                                =>  'pages#faq'

  get     '/about/accreditation'                      =>  'pages#accreditation'

  get     '/journey'                                  =>  'pages#journey'

  get     '/journey/term1'                            =>  'pages#term1'

  get     '/journey/term2'                            =>  'pages#term2'

  get     '/journey/term3'                            =>  'pages#term3'

  get     '/journey/term4'                            =>  'pages#term4'

  get     '/seeking_truth'                            =>  'pages#seeking_truth'

  get     '/seeking_truth/pedagogy'                   =>  'pages#pedagogy'

  get     '/seeking_truth/curriculum'                 =>  'pages#curriculum'

  get     '/seeking_truth/courses'                    =>  'pages#courses'

  get     '/building_character'                       =>  'pages#building_character'

  get     '/building_character/residential_living'    =>  'pages#residential_living'

  get     '/building_character/experiential_learning' =>  'pages#experiential_learning'

  get     '/building_character/sacrificial_loving'    =>  'pages#sacrificial_loving'

  get     '/admissions'                               =>  'pages#admissions'

  get     '/admissions/student_attributes'            =>  'pages#student_attributes'

  get     '/admissions/admin_process'                 =>  'pages#admin_process'

  get     '/admissions/tuition'                       =>  'pages#tuition'

  get     '/admissions/financial_aid'                 =>  'pages#financial_aid'

  get     '/admissions/apply_now'                     =>  'pages#apply_now'

  get     '/404'                                      =>    'errors#not_found'
  get     '/422'                                      =>    'errors#unprocessable'
  get     '/500'                                      =>    'errors#server_error'

  resources   :contacts,      only: [:new, :create]
  resources   :subscriptions, only: :create

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
