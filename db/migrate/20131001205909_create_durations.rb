class CreateDurations < ActiveRecord::Migration
  def change
    create_table :durations do |t|
      t.string :duracion
      t.integer :dias_duracion

      t.timestamps
    end
  end
end
