class User < ApplicationRecord
  belongs_to :calendar
  has_secure_password
end
