class Patient < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :gender
  belongs_to_active_hash :care_certified

  validates :patient_first_name,      presence: true
  validates :patient_last_name,       presence: true
  validates :patient_first_name_kana, presence: true
  validates :patient_last_name_kana,  presence: true
  validates :gender_id,               numericality: { other_than: 1, message: "can't be Blank" }
  validates :birthday,                presence: true,
  validates :care_certified_id,       numericality: { other_than: 1, message: "can't be Blank" }
  validates :prefecture_id,           numericality: { other_than: 1, message: "can't be Blank" }


end
