# == Schema Information
#
# Table name: testimonials
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  location        :string(255)
#  description     :text
#  image_file_name :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Testimonial < ActiveRecord::Base

  validates         :name,  :location,  :description, :image_file_name, presence: true

  validates         :description,       length: { maximum: 250 }

  validates         :image_file_name,   format: { with: /\w+.(gif|jpg|png)\z/i }

end
