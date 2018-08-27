class EquipmentController < ApplicationController

  def index
    @equipments = policy_scope(Equipment).order(created_at: :desc)
  end

  def show
  end

  def new
    @equipment = Equipment.new
    authorize @equipment
  end

  def create
    @equipment = Equipment.new(equipment_params)
    authorize @equipment
    if @equipment.save
      redirect_to equipment_index_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
private
  def equipment_params
    params.require(:equipment).permit(:name, :size, :unit, :remote_photo_url)
  end
end
