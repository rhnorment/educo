# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  slug        :string(255)
#  summary     :text
#  description :text
#  date        :date
#  time        :string(255)
#  venue       :string(255)
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip_code    :string(255)
#  speaker     :string(255)
#  title       :string(255)
#  bio         :text
#  photo       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

ActiveAdmin.register Event do

  menu priority: 5

  permit_params   :name, :summary, :description, :date, :time, :venue, :address1, :address2, :city, :state, :zip_code,
                  :speaker, :title, :bio, :photo

  controller do
    defaults finder: :find_by_slug
  end

  index do
    selectable_column
    column :name
    column :slug
    column :summary
    column :date
    column :time
    column :venue
    column :speaker
    actions
  end

  show do
    attributes_table do
      row :name
      row :summary
      row :description
      row :date
      row :time
      row :venue
      row :address1
      row :address2
      row :city, :state, :zip_code
      row :speaker
      row :title
      row :bio
      row :photo do
        cl_image_tag(event.photo_url)
      end
      row :comments
    end
    active_admin_comments
  end

  form do |f|
    f.inputs 'Event Details' do
      f.input :name
      f.input :summary, as: :html_editor
      f.input :description, as: :html_editor
      f.input :date, as: :datetime_select, start_year: 2015
      f.input :time
      f.input :venue
      f.input :address1
      f.input :address2
      f.input :city
      f.input :state
      f.input :zip_code
      f.input :speaker
      f.input :title
      f.input :bio, as: :html_editor
      f.input :photo, as: :file
      f.input :comments, as: :html_editor
    end
    f.actions
  end

end

