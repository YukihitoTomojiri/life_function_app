class HdsrLog < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_one    :hdsr

end
