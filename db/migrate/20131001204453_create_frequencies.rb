class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :frecuencia
      t.integer :horas_frecuencia

      t.timestamps
    end
  end
end
