# == Schema Information
#
# Table name: staffs
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  title           :string(255)
#  credentials     :string(255)
#  bio             :text
#  image_file_name :string(255)
#  type            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Staff < ActiveRecord::Base

  TYPES =          %w(Corporate Faculty)

  validates        :name, :title, :credentials, :bio, :image_file_name, :category, presence: true

  validates        :image_file_name,  format: { with: /\w+.(gif|jpg|png)\z/i }

  validates        :type, inclusion: { in: TYPES }

end
