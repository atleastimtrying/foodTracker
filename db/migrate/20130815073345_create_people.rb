class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :points_per_day
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end
end
