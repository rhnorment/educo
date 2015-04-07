# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  identifier  :string(255)
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Course < ActiveRecord::Base

  # model validations:
  validates    :identifier, :name, :description, presence: true




end
