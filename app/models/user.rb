class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :coffee_chats
  has_many :messages
  has_many :bookings, through: :coffee_chats
  has_many :reviews, through: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  pg_search_scope :search_by_topic_and_language,
    against: [ :topic, :language ],
    using: {
      tsearch: { prefix: true }
    }

end
