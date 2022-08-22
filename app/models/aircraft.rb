class Aircraft < ApplicationRecord
  belongs_to :airport
  belongs_to :owner, class_name: 'User'
  has_one_attached :photo
end
