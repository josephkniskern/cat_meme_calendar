class AddImgUrlToCatCalendar < ActiveRecord::Migration[6.0]
  def change
    add_column :cat_calendars, :img_url, :string
  end
end
