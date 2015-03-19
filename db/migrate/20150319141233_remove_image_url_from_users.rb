class RemoveImageUrlFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :image_url, :string
    remove_column :posts, :image_url, :string
  end
end
