class CreateCatCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_calendars do |t|
      t.string :month
      t.integer :cat_id
      t.integer :calendar_id

      t.timestamps
    end
  end
end
