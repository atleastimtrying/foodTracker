class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :points
      t.integer :weight
      t.integer :person_id
      t.integer :day_id

      t.timestamps
    end
  end
end
