class Route < ApplicationRecord
  belongs_to :user

  validates :start_date_time, presence: true
  validates :end_date_time, presence: true
  validates :origin, presence: true
  validates :destination, presence: true
  validates :capacity, presence: true

  # include PgSearch
  # pg_search_scope :search_by_type, :against => :type
  # pg_search_scope :search_by_origin, :against => :origin
  # pg_search_scope :search_by_destination, :against => :destination
  # pg_search_scope :search_by_end_date_time, :against => :end_date_time
end
