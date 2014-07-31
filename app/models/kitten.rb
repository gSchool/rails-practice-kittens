class Kitten < ActiveRecord::Base

  validates :image, presence: true

  has_many :categorizations
  has_many :categories, through: :categorizations

end