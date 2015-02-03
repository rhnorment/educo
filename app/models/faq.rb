class Faq < ActiveRecord::Base

  validates   :question,  :answer,  presence: true

  def self.not_first
    Faq.where("id > #{Faq.first.id}")
  end

end
