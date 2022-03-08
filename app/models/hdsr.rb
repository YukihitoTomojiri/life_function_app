class Hdsr < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :answer_0to1
  belongs_to_active_hash :answer_0to2
  belongs_to_active_hash :answer_0to5

  has_many :users
  has_many :patients
end
