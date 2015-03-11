class AddScoretoPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :score_id
    add_column :posts, :score_id, :integer
  end
end
