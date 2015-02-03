ActiveAdmin.register Faq do

  menu              priority: 4,  label: 'FAQs'

  permit_params     :question,  :answer

end
