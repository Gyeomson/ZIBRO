class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      
      t.string "userId"
      t.string "longi"
      t.string "lati"

      t.timestamps null: false
    end
  end
end
