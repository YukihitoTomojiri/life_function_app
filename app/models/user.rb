class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :patients, class_name: "patient", foreign_key: "reference_id"

  validates :first_name,         presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :last_name,          presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :first_name_kana,    presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :last_name_kana,     presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birthday,         presence: true
  validates :facility,           presence: true

end
