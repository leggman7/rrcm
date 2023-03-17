# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_17_152516) do
  create_table "equip_functions", force: :cascade do |t|
    t.string "name"
    t.string "tracked_description"
    t.integer "tracked_value"
    t.integer "thing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thing_id"], name: "index_equip_functions_on_thing_id"
  end

  create_table "failure_modes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "impact_to"
    t.integer "criticality"
    t.integer "thing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thing_id"], name: "index_failure_modes_on_thing_id"
  end

  create_table "jons", force: :cascade do |t|
    t.text "states"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "things", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "criticality"
    t.string "type"
  end

  add_foreign_key "equip_functions", "things"
  add_foreign_key "failure_modes", "things"
end
