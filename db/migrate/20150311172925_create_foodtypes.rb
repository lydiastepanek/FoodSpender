class CreateFoodtypes < ActiveRecord::Migration
  def change
    create_table :foodtypes do |t|
      t.string :title
    end

    drop_table :foodtypes
  end
end
