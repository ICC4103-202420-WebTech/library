class Author < ApplicationRecord
  has_many :books

  validates :name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :blood, presence: true

  before_validation :titleize_name

  enum blood: {
    a: 0,
    b: 1,
    ab: 2,
    o: 3
  }

  def full_name
    "#{name} #{last_name}"
  end

  private
  def titleize_name
    self.name = name.titleize
    self.last_name = last_name.titleize
  end

end