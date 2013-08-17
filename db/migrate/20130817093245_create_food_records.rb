class CreateFoodRecords < ActiveRecord::Migration
  def change
    create_table :food_records do |t|
      t.string :name
      t.integer :points
      t.integer :weight

      t.timestamps
    end
  end
end
