# == Schema Information
#
# Table name: visits
#
#  id            :integer          not null, primary key
#  student_name  :string
#  parent_name   :string
#  student_phone :string
#  parent_phone  :string
#  student_email :string
#  parent_email  :string
#  student_dob   :date
#  parent_dob    :date
#  travel_dates  :text
#  travel_times  :text
#  airport       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Visit < ActiveRecord::Base

  validates       :student_name, :parent_name, :student_phone, :parent_phone, :student_email, :parent_email,
                  :student_dob, :parent_dob, :travel_dates, :airport, presence: true

  validates       :student_email, :parent_email, format: { with: /\A\S+@\S+\z/ }

  after_create    :send_internal_email

  def send_internal_email
    ContactMailer.visit_request(self).deliver_now
  end

end
