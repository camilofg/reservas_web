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

ActiveRecord::Schema.define(version: 2018_10_02_230338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.boolean "promo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "field_id"
    t.bigint "user_id"
    t.index ["field_id"], name: "index_events_on_field_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "fields", force: :cascade do |t|
    t.integer "number"
    t.integer "size"
    t.boolean "roofed"
    t.boolean "illuminated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "place_id"
    t.index ["place_id"], name: "index_fields_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "celphone"
    t.string "email"
    t.string "whatsapp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "fields"
  add_foreign_key "events", "users"
  add_foreign_key "fields", "places"
end