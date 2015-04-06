# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  city       :string(255)
#  state      :string(255)
#  grad_year  :string(255)
#  source     :string(255)
#  referrer   :string(255)
#  topic      :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base

  # constants:
  GRAD_YEARS = %w( 2013 2014 2015 2016 2017 2018 2019 2020 )
  SOURCES = %w( Google Facebook WVA Summit Event Referral )

  # model validations:
  validates     :name,      :email, :topic, :message, presence: true
  validates     :email,     format: { with: /\A\S+@\S+\z/ }
  validates     :grad_year, inclusion: { in: GRAD_YEARS }
  validates     :source,    inclusion: { in: SOURCES }

  # callbacks:
  after_create  :send_confirmation_emails

  # methods:
  def send_confirmation_emails
    ContactMailer.contact_confirmation(self).deliver
    ContactMailer.internal_confirmation(self).deliver
  end

end
