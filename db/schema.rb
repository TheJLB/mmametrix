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

ActiveRecord::Schema.define(version: 20140514175933) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fighters", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.integer  "win"
    t.integer  "loss"
    t.integer  "draw"
    t.integer  "nc"
    t.decimal  "height"
    t.integer  "weight"
    t.decimal  "reach"
    t.string   "stance"
    t.integer  "age"
    t.decimal  "slpm"
    t.decimal  "stracc"
    t.decimal  "sapm"
    t.decimal  "strdef"
    t.decimal  "tdavg"
    t.decimal  "tdacc"
    t.decimal  "tddef"
    t.decimal  "subavg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "judges", force: true do |t|
    t.string   "name"
    t.integer  "decisions_total"
    t.decimal  "decisions_unan"
    t.decimal  "decisions_split"
    t.decimal  "decisions_major"
    t.integer  "draws"
    t.string   "event"
    t.string   "fight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referees", force: true do |t|
    t.string   "name"
    t.integer  "fights"
    t.time     "avg_fight_time"
    t.decimal  "ko_tko"
    t.decimal  "submission"
    t.decimal  "decision"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
