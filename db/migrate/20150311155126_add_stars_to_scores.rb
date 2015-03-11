class AddStarsToScores < ActiveRecord::Migration
  def change
    add_column :scores, :stars, :integer
  end
end
