class Movie < ApplicationRecord
  has_many :bookmarks
  validates :name, :overview, uniqueness: true
end
