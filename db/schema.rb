# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_24_012215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plastics", force: :cascade do |t|
    t.integer "plastic_bags"
    t.integer "coffee_cup"
    t.integer "plastic_straw"
    t.integer "six_pack_plastic_rings"
    t.integer "plastic_water_bottle"
    t.integer "coffee_pod"
    t.integer "plastic_cup"
    t.integer "disposable_diaper"
    t.integer "plastic_toothbrush"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_plastics_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "plastics", "users"
end
