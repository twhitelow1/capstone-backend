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

ActiveRecord::Schema.define(version: 2020_11_03_080215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.integer "chore_id"
    t.integer "user_id"
    t.datetime "due_date"
    t.datetime "completed_date"
    t.boolean "completed", default: false
    t.integer "assigner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chores", force: :cascade do |t|
    t.string "title"
    t.string "desc"
    t.integer "frequency"
    t.datetime "last_completed", default: "2020-11-03 13:53:47"
    t.integer "points_gain"
    t.integer "points_price"
    t.integer "room_id"
    t.boolean "currently_assigned", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "homes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "addr_number"
    t.string "addr_street"
    t.string "addr_unit"
    t.string "addr_city"
    t.string "addr_state"
    t.string "addr_zip"
    t.string "home_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "home_id"
    t.integer "floor"
    t.string "room_type"
    t.string "privacy"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.integer "house_id"
    t.integer "points"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
