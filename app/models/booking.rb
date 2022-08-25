class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :aircraft
  has_one :airport, through: :aircraft

  validates :start_on, presence: true
  validates :end_on, presence: true

  # validates :start_on, uniqueness: true
  # validates :end_on, uniqueness: true

  validate :avaibility

  def days
    (start_on..end_on).to_a
  end

  private

  def avaibility
    return unless start_on && end_on

    dates_already_booked = aircraft.bookings.map(&:days).flatten.uniq
    return if (days & dates_already_booked).empty?



    errors.add(:start_on, "period not available")
  end
end
