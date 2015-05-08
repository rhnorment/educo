# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base

  validates   :name, :email, :message, presence: true
  validates   :email, format: { with: /\A\S+@\S+\z/ }

  # callbacks:
  after_create  :send_confirmation_emails

  # methods:
  def send_confirmation_emails
    ContactMailer.contact_confirmation(self).deliver
    ContactMailer.internal_confirmation(self).deliver
  end

end
