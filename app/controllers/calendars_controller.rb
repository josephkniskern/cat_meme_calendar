class CalendarsController < ApplicationController

  def new 
    @calendar = Calendar.new
  end

  def show 
    @calendar = Calendar.find(params[:id])
  end

  def create
    @calendar = Calendar.create(calendar_params)
    redirect_to calendar_path(@calendar)
  end


  private

  def calendar_params
    params.require(:calendar).permit(:title)
  end
end
