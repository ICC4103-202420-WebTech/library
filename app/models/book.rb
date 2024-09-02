class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true, uniqueness: true
  validates :year_of_publication, presence: true
end