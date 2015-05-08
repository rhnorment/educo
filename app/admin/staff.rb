# == Schema Information
#
# Table name: staffs
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  title           :string(255)
#  bio             :text
#  staff_type      :string(255)
#  image_file_name :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#


ActiveAdmin.register Staff do

  menu priority: 2

  permit_params   :name, :title, :bio, :staff_type, :image_file_name

  form do |f|
    f.inputs 'Staff Details' do
      f.input :name
      f.input :title
      f.input :bio
      f.input :staff_type, as: :select, collection: Staff::TYPES, prompt: 'Select a type'
      f.input :image_file_name
    end
    f.actions
  end

end
