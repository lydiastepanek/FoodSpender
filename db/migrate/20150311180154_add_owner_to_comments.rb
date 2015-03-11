class AddOwnerToComments < ActiveRecord::Migration
  def change
    add_column :comments, :owner_id, :integer
  end
end
