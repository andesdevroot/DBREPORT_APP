class CreateOperecionesaveris < ActiveRecord::Migration[5.2]
  def change
    create_table :operecionesaveris do |t|
      t.date :fecha
      t.time :hora_averia
      t.text :observacion
      t.string :condicion
      t.string :afecta
      t.references :area, foreign_key: true
      t.references :sector, foreign_key: true
      t.references :equipo, foreign_key: true

      t.timestamps
    end
  end
end
