ActiveAdmin.register Course do


  menu            priority: 6,  label: 'Courses'

  permit_params   :identifier, :name, :description

end
