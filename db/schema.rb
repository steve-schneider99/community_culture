# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150912061400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classifieds", force: :cascade do |t|
    t.string   "category"
    t.string   "subcategory"
    t.float    "price"
    t.boolean  "rate"
    t.string   "title"
    t.text     "description"
    t.string   "alternate_email"
    t.string   "alternate_phone"
    t.integer  "user_id"
    t.string   "neighborhood"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "point_value"
  end

  create_table "donations", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "category"
    t.string   "points_value"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "business_type"
    t.string "business_name"
    t.string "business_address"
    t.string "business_phone"
    t.string "business_email"
  end

  create_table "positions", force: :cascade do |t|
    t.string   "position_type"
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.integer  "points_rate"
    t.integer  "duration"
    t.integer  "positions_needed"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_questions", force: :cascade do |t|
    t.string  "question"
    t.string  "option_a"
    t.string  "option_b"
    t.string  "option_c"
    t.string  "user_answer"
    t.integer "survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string  "title"
    t.integer "organization_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "neighborhood"
    t.string   "username"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "points_balance"
    t.integer  "points_earned"
    t.integer  "points_spent"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
