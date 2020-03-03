class CatCalendarsController < ApplicationController

  def index 
    @cat_calendars = CatCalendar.all
  end

  def new 
    @cat_calendar = CatCalendar.new
    if params[:calendar_id]
      session[:calendar_id] = params[:calendar_id]
    end
  end

  def show 
    @cat_calendar = CatCalendar.find(params[:id])
  end

  def create 
    byebug
  end
end
