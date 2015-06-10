# == Schema Information
#
# Table name: gallery_photos
#
#  id         :integer          not null, primary key
#  image_file :string
#  caption    :string
#  category   :string
#  active     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

ActiveAdmin.register GalleryPhoto do

  menu priority: 6

  permit_params   :image_file, :caption, :category, :active

  show do
    attributes_table do
      row :image_file do
        cl_image_tag(gallery_photo.image_file_url)
      end
      row :caption
      row :category
      row :active
    end
    active_admin_comments
  end

  form do |f|
    f.inputs 'Galley Photo Details' do
      f.input :image_file, as: :file
      f.input :caption
      f.input :category, as: :select, collection: GalleryPhoto::CATEGORIES, prompt: 'Select a category'
      f.input :active, as: :radio
    end
    f.actions
  end

end
