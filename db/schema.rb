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

ActiveRecord::Schema.define(version: 2021_12_02_220809) do

  create_table "inventories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "item_id"
    t.boolean "has"
  end

  create_table "item_locations", force: :cascade do |t|
    t.integer "item_id"
    t.integer "room_id"
    t.boolean "is_in"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.boolean "is_takeble"
    t.boolean "is_talkable"
    t.boolean "is_attackable"
    t.float "durability"
    t.string "description"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "health"
    t.integer "score"
    t.boolean "is_dead"
    t.integer "room_id"
  end

end
