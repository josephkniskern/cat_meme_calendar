class Calendar < ApplicationRecord
  has_many :cat_calendars

  has_many :cats, through: :cat_calendars
end
