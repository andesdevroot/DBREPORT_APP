class CreateMantenciondesviacions < ActiveRecord::Migration[5.2]
  def change
    create_table :mantenciondesviacions do |t|
      t.date :fecha
      t.time :hora_inicio
      t.string :hora_termino
      t.string :tratamiento
      t.string :afecta
      t.references :area, foreign_key: true
      t.references :sector, foreign_key: true
      t.references :equipos, foreign_key: true

      t.timestamps
    end
  end
end
