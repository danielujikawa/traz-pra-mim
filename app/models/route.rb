class Route < ApplicationRecord
  belongs_to :user

  validates :start_date_time, presence: true
  validates :end_date_time, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :capacity, presence: true
end
