ActiveAdmin.register Testimonial do

  menu            priority: 3

  permit_params   :name,  :location,  :description, :image_file_name

  index do
    selectable_column
    column  :name
    column  :location
    column  :description
    column  :image_file_name do |photo|
      image_tag photo.image_file_name_url, class: 'profile'
    end
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input         :name
      f.input         :location
      f.input         :description
      f.hidden_field  :image_file_name
      f.input         :image_file_name, as: :file, label: 'Choose image file:'
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :location
      row :description
      row :image_file_name do |photo|
        image_tag photo.image_file_name_url, class: 'profile'
      end
    end
    active_admin_comments
  end


end
