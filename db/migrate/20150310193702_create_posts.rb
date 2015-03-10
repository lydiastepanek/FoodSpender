class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :owner_id, null: false
      t.integer :score_id, null: false
      t.string :location
      t.integer :food_id, null: false
      t.float :price, null: false
      t.integer :num_meals
      t.string  :image_url
    end
  end
end
