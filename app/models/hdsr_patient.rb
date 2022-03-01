class HdsrPatient
  include ActiveModel::Model
  attr_accessor :user_id, :patient_id, :testing_date, :testing_place, :answer_1, :answer_2_1, :answer_2_2, :answer_2_3, :answer_2_4, 
                :answer_3, :answer_4_1, :answer_4_2, :answer_4_3, :answer_5_1, :answer_5_2, :answer_6_1, :answer_6_2,
                :answer_7_1, :answer_7_2, :answer_7_3, :answer_8, :answer_9, :answer_9_memo, :total_score
  with_options presence: true do
    validates :user_id
    validates :patient_id
    validates :testing_date
    validates :answer_1,   numericality: true
    validates :answer_2_1, numericality: true
    validates :answer_2_2, numericality: true
    validates :answer_2_3, numericality: true
    validates :answer_2_4, numericality: true
    validates :answer_3,   numericality: true
    validates :answer_4_1, numericality: true
    validates :answer_4_2, numericality: true
    validates :answer_4_3, numericality: true
    validates :answer_5_1, numericality: true
    validates :answer_5_2, numericality: true
    validates :answer_6_1, numericality: true
    validates :answer_6_2, numericality: true
    validates :answer_7_1, numericality: true
    validates :answer_7_2, numericality: true
    validates :answer_7_3, numericality: true
    validates :answer_8,   numericality: true
    validates :answer_9,   numericality: true
    validates :total_score
    
  end
end