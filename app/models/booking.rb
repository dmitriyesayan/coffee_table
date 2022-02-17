class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :coffee_chat
  has_many :messages
  has_many :reviews
end
