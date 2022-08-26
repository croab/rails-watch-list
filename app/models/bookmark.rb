class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  #
  validates :comment, length: { minimum: 6, too_short: "%{count} characters is the minimum allowed" }
  validates :movie_id, uniqueness: { scope: :list_id, message: "bookmark should be unique" }
end
