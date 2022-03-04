class HdsrLogsController < ApplicationController
    # before_action :authenticate_user!, only: [:index]
    before_action :set_patient, only: [:index, :create]
  
    def index
      @hdsr_patient = HdsrLogPatient.new
    end
  
    def create
      @hdsr_patient = HdsrLogPatient.new(hdsr_params)
      if @hdsr_patient.valid?
        @hdsr_patient.save
        redirect_to root_path
      else
        render :index
      end
    end
  
    private
    def hdsr_params
      params.require(:hdsr_log_patient).permit(:answer_1, :answer_2_1, :answer_2_2, :answer_2_3, :answer_2_4, :answer_3, 
                                               :answer_4_1, :answer_4_2, :answer_4_3, :answer_5_1, :answer_5_2, :answer_6_1,
                                               :answer_6_2, :answer_7_1, :answer_7_2, :answer_7_3, :answer_8, :answer_9, :answer_9_memo,
                                               :total_score, :testing_date , :testing_place,:selection_series
                                              ).merge(user_id: current_user.id, patient_id: params[:patient_id])
    end
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end
end
