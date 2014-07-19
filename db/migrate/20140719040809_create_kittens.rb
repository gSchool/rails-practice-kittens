class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :image, null: false
    end
  end
end
