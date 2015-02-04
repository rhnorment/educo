ActiveAdmin.register Staff do

  menu            priority: 5

  permit_params   :name, :title, :credentials, :bio, :image_file_name, :type

end
