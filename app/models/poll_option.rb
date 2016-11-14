class PollOption < ApplicationRecord
  belongs_to :poll
  has_one :movie

  validates :movie, presence: true
end
