# == Schema Information
#
# Table name: staffs
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  title           :string(255)
#  credentials     :string(255)
#  bio             :text
#  category        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  image_file_name :photo
#

class Staff < ActiveRecord::Base

  mount_uploader   :image_file_name,  ImageUploader

  TYPES =          %w( Corporate Faculty )

  validates        :name, :title, :bio, presence: true

  validates        :image_file_name,  format: { with: /\w+.(gif|jpg|png)\z/i }, allow_blank: true

  validates        :category,         inclusion: { in: TYPES }, allow_blank: true

  scope            :corporate,        -> { Staff.where('category = ?', 'Corporate') }

  scope            :faculty,          -> { Staff.where('category = ?', 'Faculty') }

end
