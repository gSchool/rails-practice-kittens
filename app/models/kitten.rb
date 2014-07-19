class Kitten < ActiveRecord::Base

  validates :image, presence: true

end