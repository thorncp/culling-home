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

ActiveRecord::Schema.define(version: 20150118020740) do

  create_table "bart_stations", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "title"
    t.string   "href"
    t.integer  "price"
    t.string   "neighborhood"
    t.boolean  "has_map"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "are_interested"
    t.boolean  "is_unlisted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bart_station_id"
    t.float    "bart_distance"
    t.boolean  "has_contacted",   default: false
    t.string   "email"
    t.boolean  "unlisted",        default: false
  end

  add_index "listings", ["bart_station_id"], name: "index_listings_on_bart_station_id"

  create_table "searches", force: true do |t|
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string   "name"
    t.text     "value",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["name"], name: "index_settings_on_name", unique: true

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
