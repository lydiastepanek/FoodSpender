class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :post_id, null: false
      t.integer :user_id, null: false
      t.integer :score, default: 0
    end
  end
end
