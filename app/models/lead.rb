# == Schema Information
#
# Table name: leads
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  phone           :string(255)
#  address_1       :string(255)
#  address_2       :string(255)
#  city            :string(255)
#  state           :string(255)
#  zip_code        :string(255)
#  graduation_year :string(255)
#  tag_id          :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Lead < ActiveRecord::Base

  # model validations by scope
  validates       :first_name, :last_name, :email, presence: true
  validates       :email, format: { with: /\A\S+@\S+\z/ }

  # callbacks:
  after_create    :add_lead_to_infusionsoft

  # methods:
  def add_lead_to_infusionsoft
    Infusionsoft.contact_add_with_dup_check( {  FirstName: self.first_name,
                                                LastName: self.last_name,
                                                Email: self.email,
                                                Phone1: self.phone,
                                                },
                                            'EmailAndName'
    )
    # Infusionsoft.contact_add_to_group(contact_id, 271)
  end

end
