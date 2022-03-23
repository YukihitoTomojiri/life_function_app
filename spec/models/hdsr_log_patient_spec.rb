require 'rails_helper'

RSpec.describe HdsrLogPatient, type: :model do
  describe '認知機能検査履歴の保存' do
    before do
      user = FactoryBot.create(:user)
      patient = FactoryBot.create(:patient)
      @hdsr_log_patient = FactoryBot.build(:hdsr_log_patient, user_id: user.id, patient_id: patient.id)
      sleep 0.1
    end

    context '保存ができる場合' do
      it 'answer_1~answer9_memoまで存在し、total_score, selection_series, user_id, patient_idが存在する' do
        expect(@hdsr_log_patient).to be_valid
      end
      it 'answer9_memoがなくても保存できる' do
        @hdsr_log_patient.answer_9_memo = ''
        expect(@hdsr_log_patient).to be_valid
      end
    end

    context '保存ができない場合' do
      it 'user_idが紐ついていない場合保存できないこと' do
        @hdsr_log_patient.user_id = nil
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("User can't be blank")
      end
      it 'patient_idが紐ついていない場合保存できないこと' do
        @hdsr_log_patient.patient_id = nil
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Patient can't be blank")
      end
      it 'answer_1が空白の場合' do
        @hdsr_log_patient.answer_1 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 1 can't be blank")
      end
      it 'answer_2_1が空白の場合' do
        @hdsr_log_patient.answer_2_1 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 2 1 can't be blank")
      end
      it 'answer_2_2が空白の場合' do
        @hdsr_log_patient.answer_2_2 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 2 2 can't be blank")
      end
      it 'answer_2_3が空白の場合' do
        @hdsr_log_patient.answer_2_3 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 2 3 can't be blank")
      end
      it 'answer_2_4が空白の場合' do
        @hdsr_log_patient.answer_2_4 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 2 4 can't be blank")
      end
      it 'answer_3が空白の場合' do
        @hdsr_log_patient.answer_3 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 3 can't be blank")
      end
      it 'answer_4_1が空白の場合' do
        @hdsr_log_patient.answer_4_1 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 4 1 can't be blank")
      end
      it 'answer_4_2が空白の場合' do
        @hdsr_log_patient.answer_4_2 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 4 2 can't be blank")
      end
      it 'answer_4_3が空白の場合' do
        @hdsr_log_patient.answer_4_3 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 4 3 can't be blank")
      end
      it 'answer_5_1が空白の場合' do
        @hdsr_log_patient.answer_5_1 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 5 1 can't be blank")
      end
      it 'answer_5_2が空白の場合' do
        @hdsr_log_patient.answer_5_2 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 5 2 can't be blank")
      end
      it 'answer_6_1が空白の場合' do
        @hdsr_log_patient.answer_6_1 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 6 1 can't be blank")
      end
      it 'answer_6_2が空白の場合' do
        @hdsr_log_patient.answer_6_2 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 6 2 can't be blank")
      end
      it 'answer_7_1が空白の場合' do
        @hdsr_log_patient.answer_7_1 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 7 1 can't be blank")
      end
      it 'answer_7_2が空白の場合' do
        @hdsr_log_patient.answer_7_2 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 7 2 can't be blank")
      end
      it 'answer_7_3が空白の場合' do
        @hdsr_log_patient.answer_7_3 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 7 3 can't be blank")
      end
      it 'answer_8が空白の場合' do
        @hdsr_log_patient.answer_8 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 8 can't be blank")
      end
      it 'answer_9が空白の場合' do
        @hdsr_log_patient.answer_9 = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Answer 9 can't be blank")
      end
      it 'selection_seriesが空白の場合' do
        @hdsr_log_patient.selection_series = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Selection series can't be blank")
      end
      it 'total_scoreが空白の場合' do
        @hdsr_log_patient.total_score = ''
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include("Total score can't be blank")
      end

      it 'answer_1が数字以外の場合' do
        @hdsr_log_patient.answer_1 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 1 is not a number')
      end
      it 'answer_2_1が数字以外の場合' do
        @hdsr_log_patient.answer_2_1 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 2 1 is not a number')
      end
      it 'answer_2_2が数字以外の場合' do
        @hdsr_log_patient.answer_2_2 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 2 2 is not a number')
      end
      it 'answer_2_3が数字以外の場合' do
        @hdsr_log_patient.answer_2_3 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 2 3 is not a number')
      end
      it 'answer_2_4が数字以外の場合' do
        @hdsr_log_patient.answer_2_4 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 2 4 is not a number')
      end
      it 'answer_3が数字以外の場合' do
        @hdsr_log_patient.answer_3 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 3 is not a number')
      end
      it 'answer_4_1が数字以外の場合' do
        @hdsr_log_patient.answer_4_1 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 4 1 is not a number')
      end
      it 'answer_4_2が数字以外の場合' do
        @hdsr_log_patient.answer_4_2 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 4 2 is not a number')
      end
      it 'answer_4_3が数字以外の場合' do
        @hdsr_log_patient.answer_4_3 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 4 3 is not a number')
      end
      it 'answer_5_1が数字以外の場合' do
        @hdsr_log_patient.answer_5_1 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 5 1 is not a number')
      end
      it 'answer_5_2が数字以外の場合' do
        @hdsr_log_patient.answer_5_2 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 5 2 is not a number')
      end
      it 'answer_6_1が数字以外の場合' do
        @hdsr_log_patient.answer_6_1 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 6 1 is not a number')
      end
      it 'answer_6_2が数字以外の場合' do
        @hdsr_log_patient.answer_6_2 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 6 2 is not a number')
      end
      it 'answer_7_1が数字以外の場合' do
        @hdsr_log_patient.answer_7_1 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 7 1 is not a number')
      end
      it 'answer_7_2が数字以外の場合' do
        @hdsr_log_patient.answer_7_2 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 7 2 is not a number')
      end
      it 'answer_7_3が数字以外の場合' do
        @hdsr_log_patient.answer_7_3 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 7 3 is not a number')
      end
      it 'answer_8が数字以外の場合' do
        @hdsr_log_patient.answer_8 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 8 is not a number')
      end
      it 'answer_9が数字以外の場合' do
        @hdsr_log_patient.answer_9 = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Answer 9 is not a number')
      end
      it 'selection_seriesが数字以外の場合' do
        @hdsr_log_patient.selection_series = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Selection series is not a number')
      end
      it 'total_scoreが数字以外の場合' do
        @hdsr_log_patient.total_score = 'a'
        @hdsr_log_patient.valid?
        expect(@hdsr_log_patient.errors.full_messages).to include('Total score is not a number')
      end
    end
  end
end
