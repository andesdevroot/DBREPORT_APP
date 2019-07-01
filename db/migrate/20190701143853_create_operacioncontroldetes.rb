class CreateOperacioncontroldetes < ActiveRecord::Migration[5.2]
  def change
    create_table :operacioncontroldetes do |t|
      t.date :fecha
      t.time :hora_inicio
      t.string :hora_final
      t.string :especialidad
      t.text :observacion
      t.references :area, foreign_key: true
      t.references :sector, foreign_key: true
      t.references :equipo, foreign_key: true

      t.timestamps
    end
  end
end
