# ap "coucou"


# Booking.destroy_all

# aircraft = Aircraft.first

# Booking.create!(
#   user: User.last,
#   aircraft: aircraft,
#   start_on: '10-09-2020'.to_date,
#   end_on: '12-09-2020'.to_date
# )


# Booking.create!(
#   user: User.last,
#   aircraft: aircraft,
#   start_on: '14-09-2020'.to_date,
#   end_on: '15-09-2020'.to_date
# )

# aircraft.reload


# datess = [
#   ['07-09-2020', '08-09-2020', true],
#   ['13-09-2020', '13-09-2020', true],
#   ['16-09-2020', '17-09-2020', true],
#   ['09-09-2020', '10-09-2020', false],
#   ['09-09-2020', '11-09-2020', false],
#   ['09-09-2020', '14-09-2020', false],
#   ['09-09-2020', '16-09-2020', false],
# ]

# res = datess.map do |dates|
#   ap dates

#   b = Booking.new(
#     user: User.last,
#     aircraft: aircraft,
#     start_on: dates[0].to_date,
#     end_on: dates[1].to_date
#   )

#   "#{dates[0]} -> #{dates[1]} | #{dates[2]} / #{b.valid?}"
# end


# ap res
