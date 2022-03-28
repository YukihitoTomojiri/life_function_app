class Patient < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :gender
  belongs_to_active_hash :care_certified
  has_many :hdsr_logs, dependent: :destroy
  has_many :hdsrs, through: :hdsr_logs, dependent: :destroy
  with_options presence: true do
    validates :patient_first_name,      format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :patient_last_name,       format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :patient_first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :patient_last_name_kana,  format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :gender_id,               numericality: true
    validates :birthday
    validates :care_certified_id,       numericality: true
    validates :prefecture_id,           numericality: { other_than: 1, message: "can't be Blank" }
  end
end
