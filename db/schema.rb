# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_01_143853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipos", force: :cascade do |t|
    t.string "equipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mantencionaves", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.text "observacion"
    t.string "condicion"
    t.string "afecta"
    t.bigint "area_id"
    t.bigint "sector_id"
    t.bigint "equipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_mantencionaves_on_area_id"
    t.index ["equipo_id"], name: "index_mantencionaves_on_equipo_id"
    t.index ["sector_id"], name: "index_mantencionaves_on_sector_id"
  end

  create_table "mantencioncorrectivas", force: :cascade do |t|
    t.date "fecha"
    t.time "hora_inicio"
    t.string "hora_final"
    t.string "especialidad"
    t.text "observacion"
    t.bigint "area_id"
    t.bigint "sector_id"
    t.bigint "equipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_mantencioncorrectivas_on_area_id"
    t.index ["equipo_id"], name: "index_mantencioncorrectivas_on_equipo_id"
    t.index ["sector_id"], name: "index_mantencioncorrectivas_on_sector_id"
  end

  create_table "mantenciondesviacions", force: :cascade do |t|
    t.date "fecha"
    t.time "hora_inicio"
    t.string "hora_termino"
    t.string "tratamiento"
    t.string "afecta"
    t.bigint "area_id"
    t.bigint "sector_id"
    t.bigint "equipos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_mantenciondesviacions_on_area_id"
    t.index ["equipos_id"], name: "index_mantenciondesviacions_on_equipos_id"
    t.index ["sector_id"], name: "index_mantenciondesviacions_on_sector_id"
  end

  create_table "operacioncontroldetes", force: :cascade do |t|
    t.date "fecha"
    t.time "hora_inicio"
    t.string "hora_final"
    t.string "especialidad"
    t.text "observacion"
    t.bigint "area_id"
    t.bigint "sector_id"
    t.bigint "equipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_operacioncontroldetes_on_area_id"
    t.index ["equipo_id"], name: "index_operacioncontroldetes_on_equipo_id"
    t.index ["sector_id"], name: "index_operacioncontroldetes_on_sector_id"
  end

  create_table "operecionesaveris", force: :cascade do |t|
    t.date "fecha"
    t.time "hora_averia"
    t.text "observacion"
    t.string "condicion"
    t.string "afecta"
    t.bigint "area_id"
    t.bigint "sector_id"
    t.bigint "equipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_operecionesaveris_on_area_id"
    t.index ["equipo_id"], name: "index_operecionesaveris_on_equipo_id"
    t.index ["sector_id"], name: "index_operecionesaveris_on_sector_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "sector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mantencionaves", "areas"
  add_foreign_key "mantencionaves", "equipos"
  add_foreign_key "mantencionaves", "sectors"
  add_foreign_key "mantencioncorrectivas", "areas"
  add_foreign_key "mantencioncorrectivas", "equipos"
  add_foreign_key "mantencioncorrectivas", "sectors"
  add_foreign_key "mantenciondesviacions", "areas"
  add_foreign_key "mantenciondesviacions", "equipos", column: "equipos_id"
  add_foreign_key "mantenciondesviacions", "sectors"
  add_foreign_key "operacioncontroldetes", "areas"
  add_foreign_key "operacioncontroldetes", "equipos"
  add_foreign_key "operacioncontroldetes", "sectors"
  add_foreign_key "operecionesaveris", "areas"
  add_foreign_key "operecionesaveris", "equipos"
  add_foreign_key "operecionesaveris", "sectors"
end
