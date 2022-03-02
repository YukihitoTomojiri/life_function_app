class HdsrLogsController < ApplicationController
    # before_action :authenticate_user!, only: [:index]
    before_action :set_patient, only: [:index, :create]
  
    def index
      @hdsr_patient = HdsrPatient.new
    end
  
    def create
      @hdsr_patient = HdsrPatient.new(hdsr_params)
      if @hdsr_patient.valid?
        @hdsr_patient.save
        redirect_to root_path
      else
        render :index
      end
    end
  
    private
    def hdsr_params
      params.require(:hdsr_patient).permit().merge(user_id: cerrent_user.id, patient_id: params[:patient_id])
    end
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end
end
