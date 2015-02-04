# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  question   :string(255)
#  answer     :text
#  created_at :datetime
#  updated_at :datetime
#

class Faq < ActiveRecord::Base

  validates   :question,  :answer,  presence: true

  def self.not_first
    Faq.where("id > #{Faq.first.id}")
  end

end
