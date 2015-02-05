ActiveAdmin.register Staff do

  menu            priority: 5,   label: 'Staff'

  permit_params   :name, :title, :credentials, :bio, :image_file_name, :category

  index do
    selectable_column
    column  :name
    column  :title
    column  :credentials
    column  :category
    column  :bio
    column  :image_file_name do |photo|
      image_tag photo.image_file_name_url, width: 170, height: 210
    end
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input         :name
      f.input         :title
      f.input         :credentials
      f.input         :bio
      f.input         :category,  as: :select, collection: Staff::TYPES
      f.hidden_field  :image_file_name, label: 'Select the type of staff:'
      f.input         :image_file_name, as: :file, label: 'Choose image file:'
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :title
      row :credentials
      row :bio
      row :category
      row :image_file_name do |photo|
        image_tag photo.image_file_name_url, width: 170, height: 210
      end
    end
    active_admin_comments
  end


end
