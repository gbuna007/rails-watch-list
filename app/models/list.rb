class List < ApplicationRecord
  # A list must have a unique name.
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
