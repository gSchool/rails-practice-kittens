class Categorization < ActiveRecord::Base
belongs_to :category
  validates_presence_of :category, :message => "Category can't be blank"
end