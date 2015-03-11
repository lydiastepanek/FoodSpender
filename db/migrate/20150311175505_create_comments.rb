class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id, null: false
      t.string :content, null: false
    end
    add_index :comments, :post_id
  end
end
