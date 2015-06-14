# == Schema Information
#
# Table name: leads
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  email          :string(255)
#  phone          :string(255)
#  trigger_tag_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#  leadsource_id  :integer
#

class Lead < ActiveRecord::Base

  # configuration
  include Infusionsoftable

  # model validations by scope
  validates       :first_name, :last_name, :email, presence: true
  validates       :email, format: { with: /\A\S+@\S+\z/ }

  # callbacks:
  after_create    :add_contact_to_infusionsoft

end
