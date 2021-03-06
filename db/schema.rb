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

ActiveRecord::Schema.define(version: 20170105163815) do

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_comments_on_car_id"
  end

  create_table "dimensions", force: :cascade do |t|
    t.float    "length"
    t.float    "width"
    t.float    "height"
    t.float    "wheel_base"
    t.float    "weight"
    t.integer  "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_dimensions_on_car_id"
  end

  create_table "engines", force: :cascade do |t|
    t.string   "engine_type"
    t.float    "displacment"
    t.integer  "power"
    t.float    "torque"
    t.string   "layout"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["car_id"], name: "index_engines_on_car_id"
  end

  create_table "performances", force: :cascade do |t|
    t.integer  "top_speed"
    t.float    "acceleration1"
    t.float    "acceleration2"
    t.float    "power_to_weight"
    t.float    "torque_to_weight"
    t.integer  "car_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["car_id"], name: "index_performances_on_car_id"
  end

  create_table "transmissions", force: :cascade do |t|
    t.string   "trans_type"
    t.integer  "speeds"
    t.string   "drive_type"
    t.string   "clutch_type"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["car_id"], name: "index_transmissions_on_car_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
