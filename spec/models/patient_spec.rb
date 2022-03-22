require 'rails_helper'

RSpec.describe Patient, type: :model do
  before do
    @patient = FactoryBot.build(:patient)
  end
  describe '利用者新規登録' do
    context '新規登録ができる場合' do
      it 'patient_first_name, patient_last_name, patient_first_name_kana, patient_last_name_kana, birthday, gender_id, care_certified_id, prefecture_idが存在する場合' do
        expect(@patient).to be_valid
      end
    end

    context '新規登録ができない場合' do
      it 'patient_first_nameが空白の場合' do
        @patient.patient_first_name = ""
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Patient first name can't be blank")
      end
      it 'patient_first_nameは、全角（漢字・ひらがな・カタカナ）でなければ登録できない' do
        @patient.patient_first_name = 'aaaaa'
        @patient.valid?
        expect(@patient.errors.full_messages).to include('Patient first name is invalid')
      end
      it 'patient_last_nameが空白の場合は登録できない' do
        @patient.patient_last_name = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Patient last name can't be blank")
      end
      it 'last_nameは、全角（漢字・ひらがな・カタカナ）でなければ登録できない' do
        @patient.patient_last_name = 'aaaaa'
        @patient.valid?
        expect(@patient.errors.full_messages).to include('Patient last name is invalid')
      end
      it 'first_name_kanaが空白の場合は登録できない' do
        @patient.patient_first_name_kana = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Patient first name kana can't be blank")
      end
      it 'first_name_kanaは、全角（カタカナ）でなければ登録できない' do
        @patient.patient_first_name_kana = 'aaaaa'
        @patient.valid?
        expect(@patient.errors.full_messages).to include('Patient first name kana is invalid')
      end
      it 'last_name_kanaが空白の場合は登録できない' do
        @patient.patient_last_name_kana = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Patient last name kana can't be blank")
      end
      it 'last_name_kanaは、全角（カタカナ）でなければ登録できない' do
        @patient.patient_last_name_kana = 'aaaaa'
        @patient.valid?
        expect(@patient.errors.full_messages).to include('Patient last name kana is invalid')
      end
      it 'birthdayは空白の場合は登録できない' do
        @patient.birthday = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Birthday can't be blank")
      end
      it 'gender_idは空白の場合は登録できない' do
        @patient.gender_id = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Gender can't be blank")
      end
      it 'gender_idは数字以外の場合は登録できない' do
        @patient.gender_id = 'a'
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Gender is not a number")
      end
      it 'care_certified_idが空白の場合は登録できない' do
        @patient.care_certified_id = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Care certified can't be blank")
      end
      it 'care_certified_idが数字以外の場合は登録できない' do
        @patient.care_certified_id = ''
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Care certified is not a number")
      end
      it 'prefecture_idが1の場合は登録できない' do
        @patient.prefecture_id = 1
        @patient.valid?
        expect(@patient.errors.full_messages).to include("Prefecture can't be Blank")
      end
      it 'userと紐ついていないと登録できない'do
        @patient.user = nil
        @patient.valid?
        expect(@patient.errors.full_messages).to include("User must exist")
      end
    end
  end
end
