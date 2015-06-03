# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  slug        :string(255)
#  description :text
#  date        :date
#  time        :time
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

class Event < ActiveRecord::Base

  mount_uploader  :photo, PictureUploader

  validates       :name, :description, :date, :time, :venue, :address1, :city, :state, :zip_code,
                  :speaker, :bio, presence: true

  validates       :photo, format: { with: /.*\.(jpg|gif|png)/, allow_blank: true }

  validate        :date_not_in_past

  def to_param
    slug
  end

  def date_not_in_past
    errors.add(:date, 'cannot be in the past') if date.present? && date < Date.today
  end

  scope           :upcoming,    -> { where('date > ?', Time.now).order(date: :asc) }

end
