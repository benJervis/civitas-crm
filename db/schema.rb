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

ActiveRecord::Schema.define(version: 20170524091035) do

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "group_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.boolean  "trusted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "mobile_number"
    t.string   "address"
    t.string   "email"
    t.date     "dob"
    t.string   "password_digest"
    t.string   "level"
    t.boolean  "privacy_consent"
    t.string   "main_service"
    t.text     "special_needs"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "occupation"
    t.text     "notes"
    t.string   "remember_digest"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.integer  "home_number"
    t.integer  "work_number"
    t.string   "image"
  end

end
