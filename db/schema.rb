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

ActiveRecord::Schema.define(version: 2020_08_18_210042) do

  create_table "background_color_changers", force: :cascade do |t|
    t.string "colorHex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "font_changers", force: :cascade do |t|
    t.string "fontFamily"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "palettizers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "font_changer_id", null: false
    t.integer "background_color_changer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["background_color_changer_id"], name: "index_palettizers_on_background_color_changer_id"
    t.index ["font_changer_id"], name: "index_palettizers_on_font_changer_id"
    t.index ["user_id"], name: "index_palettizers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "palettizers", "background_color_changers"
  add_foreign_key "palettizers", "font_changers"
  add_foreign_key "palettizers", "users"
end
