class CreateEquipos < ActiveRecord::Migration[5.2]
  def change
    create_table :equipos do |t|
      t.string :equipo

      t.timestamps
    end
  end
end
