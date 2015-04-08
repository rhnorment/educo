# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  identifier  :string(255)
#  name        :string(255)
#  description :text
#  term        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Course < ActiveRecord::Base

  TERMS = %w( Theos Cosmos Anthropos Ethnos )

  # model validations:
  validates     :identifier,  :name, :description, :term, presence: true
  validates     :term,        inclusion: { in: TERMS }

end
