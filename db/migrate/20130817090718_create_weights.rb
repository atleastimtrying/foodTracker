class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :person_id
      t.integer :weight

      t.timestamps
    end
  end
end
