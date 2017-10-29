class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.string "userId"
      t.string "address"
      t.string "home"
      t.string "school"
      t.string "parent1"
      t.string "parent2"

      t.timestamps null: false
    end
  end
end
