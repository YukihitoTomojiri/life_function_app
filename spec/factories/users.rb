FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end
    first_name            { person.first.kanji }
    last_name             { person.last.kanji }
    first_name_kana       { person.first.katakana }
    last_name_kana        { person.last.katakana }
    birthday              { Faker::Date.backward }
    email                 { Faker::Internet.free_email }
    password              { 'test1234' }
    password_confirmation { password }
    facility              { 'テスト病院' }
    affiliation           { 'テスト科' }
  end
end
