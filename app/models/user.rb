class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :coffee_chats
  has_many :messages
  has_many :expert_topics
  has_many :bookings, through: :coffee_chats
  has_many :reviews, through: :bookings
  has_many :topics, through: :expert_topics
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  pg_search_scope :search_by_topic_and_language,
    against: :language,
    associated_against: {
      topics: :topic_name
    },
    using: {
      tsearch: { prefix: true }
    }

end
