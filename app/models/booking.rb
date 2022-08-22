class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :airport
  belongs_to :aircraft
end
