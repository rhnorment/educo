ActiveAdmin.register Event do

  menu priority: 2

  permit_params :name, :description, :date, :start_time, :end_time, :place, :city, :state, :zip_code

end
