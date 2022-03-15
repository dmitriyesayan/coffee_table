class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :coffee_chat
  belongs_to :topic
  has_many :reviews, dependent: :delete_all
  has_many :messages, dependent: :delete_all
end
