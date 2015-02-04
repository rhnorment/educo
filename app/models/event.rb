# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  date        :date
#  start_time  :string(255)
#  end_time    :string(255)
#  place       :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip_code    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Event < ActiveRecord::Base

  validates :name, :description, :date, :start_time, :end_time, :place, :city, :state, :zip_code, presence: true

  scope     :upcoming_events,           ->  { where('date > ?', Time.now).order(date: :desc).limit(3) }

end
