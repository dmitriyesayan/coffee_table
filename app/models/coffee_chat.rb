class CoffeeChat < ApplicationRecord
  belongs_to :user
  has_many :bookings

 validates :start, :end, presence: true

  default_scope -> { order(:start) }  # Our meetings will be ordered by their start_time by default

  def time
    "#{start.strftime('%I:%M %p')} - #{self.end.strftime('%I:%M %p')}"
  end

  def multi_days?
    (self.end.to_date - start.to_date).to_i >= 1
  end
end
