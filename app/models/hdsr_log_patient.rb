class HdsrLogPatient
  include ActiveModel::Model
  include ActiveRecord::AttributeAssignment
  attr_accessor :user_id, :patient_id, :testing_place, :answer_1, :answer_2_1, :answer_2_2, :answer_2_3, :answer_2_4,
                :answer_3, :answer_4_1, :answer_4_2, :answer_4_3, :answer_5_1, :answer_5_2, :answer_6_1, :answer_6_2,
                :answer_7_1, :answer_7_2, :answer_7_3, :answer_8, :answer_9, :answer_9_memo, :total_score, :selection_series

  with_options presence: true do
    validates :user_id
    validates :patient_id
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
    validates :total_score, numericality: true
    validates :selection_series, numericality: true
  end

  def save
    hdsr_log = HdsrLog.create(user_id: user_id, patient_id: patient_id)
    Hdsr.create(testing_place: testing_place, answer_1: answer_1, answer_2_1: answer_2_1, answer_2_2: answer_2_2, answer_2_3: answer_2_3, answer_2_4: answer_2_4,
                answer_3: answer_3, answer_4_1: answer_4_1, answer_4_2: answer_4_2, answer_4_3: answer_4_2, answer_5_1: answer_5_1, answer_5_2: answer_5_2, answer_6_1: answer_6_1, answer_6_2: answer_6_2,
                answer_7_1: answer_7_1, answer_7_2: answer_7_2, answer_7_3: answer_7_3, answer_8: answer_8, answer_9: answer_9, answer_9_memo: answer_9_memo, total_score: total_score, selection_series: selection_series,
                hdsr_log_id: hdsr_log.id)
  end
end
