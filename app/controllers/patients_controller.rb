class PatientsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @hdsr_logs = HdsrLog.where(patient_id: @patient.id)
    @hdsrs = Hdsr.where(hdsr_log_id: @hdsr_logs)
  end

  def destroy
    patient = Patient.find(params[:id])
    patient.destroy
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def patient_params
    params.require(:patient).permit(:patient_last_name, :patient_first_name, :patient_last_name_kana, :patient_first_name_kana, :gender_id,
                                    :birthday, :care_certified_id, :prefecture_id).merge(user_id: current_user.id)
  end
end
