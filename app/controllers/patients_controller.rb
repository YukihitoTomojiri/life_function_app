class PatientsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]
  def index
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
  
  

  private
  
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def patient_params
    params.require(:patient).permit(:patient_last_name, :patient_first_name, :patient_last_name_kana, :patient_first_name_kana, :gender_id, 
                                    :birthday, :care_certified_id, :prefecture_id).merge(user_id: current_user.id)
  end
end
