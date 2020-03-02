class CatCalendar < ApplicationRecord
  belongs_to :cat 
  belongs_to :calendar 
end
