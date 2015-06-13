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

ActiveAdmin.register Visit do

  menu priority: 3

  index do
    selectable_column
    column  :student_name
    column  :parent_name
    column  :travel_dates
    column  :travel_times
    column  :airport
    actions
  end

end
