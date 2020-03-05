class CatCalendarsController < ApplicationController

  def index 
    @cat_calendars = CatCalendar.all
  end

  def new 
    @cat_calendar = CatCalendar.new
    if params[:calendar_id] && params[:month]
      session[:calendar_id] = params[:calendar_id] 
      session[:month] = params[:month]
    end
  end

  # def show 
  #   @cat_calendar = CatCalendar.find(params[:id])
  # end

  def create 
    @cat_calendar = CatCalendar.create(month: session[:month], cat_id: params[:cat_id], calendar_id: session[:calendar_id])
    # redirect_to edit_cat_calendar_path(@cat_calendar.id)
    redirect_to calendar_path(session[:calendar_id])
  end

  def update 
    @cat_calendar = CatCalendar.find(params[:id])
    
    @cat = Cat.find(params[:cat_id])
    @cat_calendar.cat = @cat
    @cat_calendar.save
    redirect_to calendar_path(@cat_calendar.calendar_id)
  end

  # def show 
  #   @cat_calendar = CatCalendar.find(params[:id])
  # end

  def edit 
    @cat_calendar = CatCalendar.find(params[:id])
  end
end
