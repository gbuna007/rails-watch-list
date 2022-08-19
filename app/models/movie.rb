class Movie < ApplicationRecord
  # A movie must have a unique title and an overview.
  # You can’t delete a movie if it is referenced in at least one bookmark.
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
