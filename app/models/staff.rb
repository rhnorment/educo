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

class Staff < ActiveRecord::Base

  mount_uploader  :photo, PictureUploader

  TYPES = %w(Leadership Staff Faculty)

  validates   :name, :title, :bio, :staff_type, presence: true

  validates   :staff_type, inclusion: { in: TYPES }

  validates   :photo, format: { with: /\w+.(gif|jpg|png)\z/i, allow_blank: true }

  # getter method for last name
  def last_name
    names = name.split(' ')
    names.pop
  end

end
