class Faq < ActiveRecord::Base

  validates   :question,  :answer,  presence: true

  scope       :not_first,           -> { where('id > 1') }

end
