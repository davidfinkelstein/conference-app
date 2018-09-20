class Meeting < ApplicationRecord

  has_many :meeting_topics
  has_many :topics, through: :meeting_topics

  belongs_to :speaker #returns hash of one speaker

  validates :title, uniqueness: true
  validates :agenda, length: { minimum: 2 }
  validates :time, presence: true

end
