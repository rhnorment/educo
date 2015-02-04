ActiveAdmin.register Staff do

  menu            priority: 5,   label: 'Staff'

  permit_params   :name, :title, :credentials, :bio, :image_file_name, :category

end
