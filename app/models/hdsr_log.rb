class HdsrLog < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  has_many   :hdsr, dependent: :destroy
end
