class Meeting < ApplicationRecord

  belongs_to :speaker #returns hash of one speaker

  validates :title, uniqueness: true
  validates :agenda, length: { minimum: 2 }
  validates :time, presence: true

end
