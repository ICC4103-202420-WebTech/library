class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :year_of_publication, presence: true
end