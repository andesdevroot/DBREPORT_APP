class CreateOperadesviaprodus < ActiveRecord::Migration[5.2]
  def change
    create_table :operadesviaprodus do |t|
      t.date :fecha
      t.time :hora_inicio
      t.time :hora_termino
      t.string :tratamiento_promedio
      t.string :afecta_parcial
      t.string :total_proceso
      t.references :area, foreign_key: true
      t.references :sector, foreign_key: true
      t.references :equipo, foreign_key: true

      t.timestamps
    end
  end
end
