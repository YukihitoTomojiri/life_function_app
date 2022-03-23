FactoryBot.define do
  factory :hdsr_log_patient do
    answer_1         { 1 }
    answer_2_1       { 1 }
    answer_2_2       { 1 }
    answer_2_3       { 1 }
    answer_2_4       { 1 }
    answer_3         { 1 }
    answer_4_1       { 1 }
    answer_4_2       { 1 }
    answer_4_3       { 1 }
    answer_5_1       { 1 }
    answer_5_2       { 1 }
    answer_6_1       { 1 }
    answer_6_2       { 1 }
    answer_7_1       { 1 }
    answer_7_2       { 1 }
    answer_7_3       { 1 }
    answer_8         { 1 }
    answer_9         { 1 }
    answer_9_memo    { "ああああ" }
    total_score      { 1 }
    selection_series { 1 }
    association      :user
    association      :patient
  end
end
