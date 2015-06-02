# == Schema Information
#
# Table name: staffs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  bio        :text
#  staff_type :string(255)
#  created_at :datetime
#  updated_at :datetime
#  photo      :string(255)
#

ActiveAdmin.register Staff do

  menu priority: 4

  permit_params   :name, :title, :bio, :staff_type, :photo

  show do
    attributes_table do
      row :name
      row :title
      row :bio
      row :staff_type
      row :photo do
        cl_image_tag(staff.photo_url)
      end
    end
    active_admin_comments
  end

  form do |f|
    f.inputs 'Staff Details' do
      f.input :name
      f.input :title
      f.input :bio
      f.input :staff_type, as: :select, collection: Staff::TYPES, prompt: 'Select a type'
      f.input :photo, as: :file
    end
    f.actions
  end

end
