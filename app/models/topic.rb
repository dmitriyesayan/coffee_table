class Topic < ApplicationRecord
  has_many :users, through: :expert_topics
  has_many :bookings
end
