class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.belongs_to :kitten
      t.integer :category_id #these two are interchangable!
    end
  end
end
