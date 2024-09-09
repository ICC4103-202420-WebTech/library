class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true, uniqueness: true
  validates :year_of_publication, presence: true

  before_save :titleize_title

  private
    def titleize_title
      self.title = title.titleize
    end
end