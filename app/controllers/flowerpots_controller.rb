class FlowerpotsController < ApplicationController

  def index
    @flowerpots = Flowerpot.all
  end

  def new
    @flowerpot = Flowerpot.new
  end

  def create
    @flowerpot = Flowerpot.new(params.require(:flowerpot).permit(:material, :cost, plant_attributes: [:name, flower_attributes: [:color, :smell]]))
    
    if @flowerpot.valid? && @flowerpot.save
      redirect_to flowerpots_path
    else
      render :new
    end
  end


end




