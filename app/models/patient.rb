class Patient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :user
    belongs_to_active_hash :prefecture
    belongs_to_active_hash :gender
    belongs_to_active_hash :care_certified

    validates :patient_first_name,      presence: true
    validates :patient_last_name,       presence: true
    validates :patient_first_name_kana, presence: true
    validates :patient_last_name_kana,  presence: true
    validates :gender_id,               presence: true
    validates :birthday,                presence: true
    validates :care_certified_id,       numericality: { other_than: 1, message: "can't be Blank" }
    validates :prefecture_id,           numericality: { other_than: 1, message: "can't be Blank" }
end
