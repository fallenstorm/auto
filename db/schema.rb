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

ActiveRecord::Schema.define(version: 20140204130651) do

  create_table "cars", force: true do |t|
    t.string   "name",                                  null: false
    t.string   "brand",                                 null: false
    t.string   "model"
    t.string   "color"
    t.integer  "year"
    t.decimal  "engine_volume", precision: 4, scale: 2
    t.string   "vin"
    t.string   "country"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["name"], name: "index_cars_on_name", unique: true, using: :btree

  create_table "clients", force: true do |t|
    t.string   "name",       null: false
    t.string   "phone"
    t.date     "birthday"
    t.string   "address"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["name"], name: "index_clients_on_name", unique: true, using: :btree
  add_index "clients", ["phone"], name: "index_clients_on_phone", unique: true, using: :btree

  create_table "dilers", force: true do |t|
    t.string   "name",       null: false
    t.string   "address"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dilers", ["name"], name: "index_dilers_on_name", unique: true, using: :btree

  create_table "dilers_users", id: false, force: true do |t|
    t.integer "diler_id"
    t.integer "user_id"
  end

  create_table "engineers", force: true do |t|
    t.string   "name",       null: false
    t.date     "birthday"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "engineers", ["name"], name: "index_engineers_on_name", unique: true, using: :btree
  add_index "engineers", ["phone"], name: "index_engineers_on_phone", unique: true, using: :btree

  create_table "orders", force: true do |t|
    t.string   "name",         null: false
    t.datetime "record_time",  null: false
    t.datetime "arrival_time"
    t.integer  "car_id",       null: false
    t.integer  "diler_id",     null: false
    t.integer  "engineer_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["name"], name: "index_orders_on_name", unique: true, using: :btree

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "roles_mask"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
