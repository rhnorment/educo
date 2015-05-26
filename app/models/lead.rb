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

  # constants
  TRIGGER_TAG_ID = 271
  FACEBOOK_ID = 265
  DEFAULT_LEADSOURCE_ID = 267

  # model validations by scope
  validates       :first_name, :last_name, :email, presence: true
  validates       :email, format: { with: /\A\S+@\S+\z/ }

  # callbacks:
  after_create    :add_lead_to_infusionsoft

  # add lead to infusionsoft and assign to gauntlet.
  def add_lead_to_infusionsoft
    contact_id = Infusionsoft.contact_add_with_dup_check( { FirstName: self.first_name,
                                                LastName: self.last_name,
                                                Email: self.email, Phone1: self.phone, LeadSourceId: self.leadsource_id },
                                                'EmailAndName'
    )
    Infusionsoft.contact_add_to_group(contact_id, self.trigger_tag_id)
  end

end
