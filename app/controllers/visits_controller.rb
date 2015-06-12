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

class VisitsController < ApplicationController

  before_action   :set_body_id

  def new
    @visit = Visit.new
  end

  def create
    visit = Visit.new(visit_params)
    visit.save
  end

  private

    def set_body_id
      @body_id = 'contact-us'
    end

    def visit_params
      params.require(:visit).permit(:student_name, :parent_name, :student_phone, :parent_phone,
            :student_email, :parent_email, :student_dob, :parent_dob, :travel_dates, :travel_times, :airport)
    end

end
