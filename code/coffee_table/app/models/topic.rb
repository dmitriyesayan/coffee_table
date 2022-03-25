class Topic < ApplicationRecord
  has_many :expert_topics
  has_many :users, through: :expert_topics
  has_many :bookings
end
