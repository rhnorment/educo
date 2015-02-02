Rails.application.routes.draw do

  root    'about#index'
  get     'about/index'
  get     'about/faq'

end
