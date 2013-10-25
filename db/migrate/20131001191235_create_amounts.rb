class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :cantidad
      t.string :unidad

      t.timestamps
    end
  end
end
