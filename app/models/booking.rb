class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :airport, optional: true
  belongs_to :aircraft

  validates :start_on, presence: true

  # validates :start_on, uniqueness: true
  # validates :end_on, uniqueness: true
end
