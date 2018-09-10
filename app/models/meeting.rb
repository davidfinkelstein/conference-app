class Meeting < ApplicationRecord

  validates :title, uniqueness: true
  validates :agenda, length: { minimum: 2 }
  validates :time, presence: true

end
