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

class Staff < ActiveRecord::Base

  TYPES = %w(Leadership Staff Faculty)

  validates   :name, :title, :bio, :staff_type, :image_file_name, presence: true

  validates   :staff_type, inclusion: { in: TYPES }

  validates   :image_file_name, format: { with: /.*\.(jpg|gif|png)/ }

end
