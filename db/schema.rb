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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_08_19_152332) do
=======
ActiveRecord::Schema.define(version: 2020_08_18_210042) do
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212

  create_table "background_color_changers", force: :cascade do |t|
    t.string "colorHex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

<<<<<<< HEAD
  create_table "user_palettes", force: :cascade do |t|
    t.string "background_color"
    t.string "font_color"
    t.string "font_family"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_palettes_on_user_id"
=======
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
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

<<<<<<< HEAD
  add_foreign_key "user_palettes", "users"
=======
  add_foreign_key "palettizers", "background_color_changers"
  add_foreign_key "palettizers", "font_changers"
  add_foreign_key "palettizers", "users"
>>>>>>> 4ed6026bb64ead7cb5317e196ef0f88f9deb5212
end
