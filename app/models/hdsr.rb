class Hdsr < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :users
  has_many :patients
end
