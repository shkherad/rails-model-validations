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

ActiveRecord::Schema.define(version: 20160621174505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citizenships", force: :cascade do |t|
    t.string   "status"
    t.date     "date_obtained"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "person_id"
    t.integer  "country_id"
  end

  add_index "citizenships", ["country_id"], name: "index_citizenships_on_country_id", using: :btree
  add_index "citizenships", ["person_id"], name: "index_citizenships_on_person_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "population"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "given_name"
    t.string   "surname"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "people", ["given_name", "surname"], name: "index_people_on_given_name_and_surname", unique: true, using: :btree
  add_index "people", ["phone_number"], name: "index_people_on_phone_number", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "citizenships", "countries"
  add_foreign_key "citizenships", "people"
end
