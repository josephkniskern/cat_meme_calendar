class Cat < ApplicationRecord
  has_many :cat_calendars
  has_many :calendars, through: :cat_calendars
end
