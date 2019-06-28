class CreateMantencionaves < ActiveRecord::Migration[5.2]
  def change
    create_table :mantencionaves do |t|
      t.date :fecha
      t.time :hora
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
