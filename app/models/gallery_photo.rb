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

class GalleryPhoto < ActiveRecord::Base

  mount_uploader  :image_file, PictureUploader

  CATEGORIES  = %w(Academic Athletic Cultural Dining Italy Other Residential )

  validates   :caption, :category, presence: true

  validates   :image_file, format: { with: /.*\.(jpg|gif|png)/ }

  validates   :category, inclusion: { in: CATEGORIES }

end
