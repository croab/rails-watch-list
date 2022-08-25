class Movie < ApplicationRecord
  has_many :bookmarks
  # dependent: :restrict_with_exception or :restrict_with_error
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
