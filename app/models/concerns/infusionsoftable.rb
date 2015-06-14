module Infusionsoftable

  extend ActiveSupport::Concern

  # constants
  TRIGGER_TAG_ID = 271
  ADD_TO_CALL_LIST_ID = 293
  FACEBOOK_ID = 265
  DEFAULT_LEADSOURCE_ID = 267

  def add_contact_to_infusionsoft
    contact_id = Infusionsoft.contact_add_with_dup_check( { FirstName: self.first_name,
                                                            LastName: self.last_name,
                                                            Email: self.email, Phone1: self.phone, LeadSourceId: self.leadsource_id },
                                                          'EmailAndName'
    )

    email_optin(self.email)

    add_contact_to_group(contact_id, self.trigger_tag_id) if self.trigger_tag_id.present?
    add_contact_to_group(contact_id, ADD_TO_CALL_LIST_ID) if self.phone.present?
  end

  def email_optin(email)
    Infusionsoft.email_optin(email, 'completed form')
  end

  def add_contact_to_group(contact_id, tag_id)
    Infusionsoft.contact_add_to_group(contact_id, tag_id)
  end

end