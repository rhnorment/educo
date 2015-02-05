ActiveAdmin.register Testimonial do

  menu            priority: 3

  permit_params   :name,  :location,  :description, :image_file_name


end
