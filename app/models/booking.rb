class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :coffee_chat
  belongs_to :topic
  has_many :reviews
  has_many :messages
end
