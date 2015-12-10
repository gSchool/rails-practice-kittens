class Kitten < ActiveRecord::Base

  validates :image, presence: true
  has_many :categories, through: :categorizations
  has_many :categorizations

end
