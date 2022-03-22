FactoryBot.define do
  factory :patient do
    transient do
      person { Gimei.name }
    end
    patient_first_name            { person.first.kanji }
    patient_last_name             { person.last.kanji }
    patient_first_name_kana       { person.first.katakana }
    patient_last_name_kana        { person.last.katakana }
    birthday                      { Faker::Date.backward }
    gender_id                     { 1 }
    care_certified_id             { 1 }
    prefecture_id                 { 44 }
    association                   :user
  end
end
