class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :nombre_uno, null: false
      t.string :nombre_dos
      t.string :apellido_uno, null: false
      t.string :apellido_dos
      t.integer :documento_identidad, null: false, unique: true
      t.date :fecha_nacimiento, null: false
      t.integer :edad, null: false
      t.string :telefono, null: false
      t.string :celular
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
