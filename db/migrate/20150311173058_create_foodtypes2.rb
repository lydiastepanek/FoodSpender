class CreateFoodtypes2 < ActiveRecord::Migration
  def change

    create_table :foodtypes do |t|
      t.string :title
    end

    drop_table :food_types

  end
end
