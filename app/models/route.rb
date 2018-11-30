class Route < ApplicationRecord
  CATEGORIES = "<option disabled selected>Size of your item</option><option>Fits in a pocket<option>Fits in a bag<option>Fits in a car<option>Fits in a big car<option>Fits in a van"

  belongs_to :user

  validates :start_date_time, presence: true
  validates :end_date_time, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :capacity, presence: true

  include PgSearch
  # pg_search_scope :search_by_type, :against => :capacity
  pg_search_scope :search_by_origin, against: :origin
  pg_search_scope :search_by_destination, against: :destination
  # pg_search_scope :search_by_end_date_time, :against => :end_date_time
end
