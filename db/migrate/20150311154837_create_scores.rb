class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string  :description
      t.timestamps
    end
  end
end
