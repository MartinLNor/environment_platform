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

ActiveRecord::Schema.define(version: 2018_08_27_115416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chains", force: :cascade do |t|
    t.string "name"
    t.string "risk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "chains_equipment", id: false, force: :cascade do |t|
    t.bigint "chain_id", null: false
    t.bigint "equipment_id", null: false
  end

  create_table "chains_providers", id: false, force: :cascade do |t|
    t.bigint "chain_id", null: false
    t.bigint "provider_id", null: false
  end

  create_table "chains_users", id: false, force: :cascade do |t|
    t.bigint "chain_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_contacts_on_provider_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.string "unit"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "fax"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_details", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "chain_id"
    t.bigint "equipment_id"
    t.integer "quantity"
    t.string "request_contact"
    t.date "wish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chain_id"], name: "index_request_details_on_chain_id"
    t.index ["equipment_id"], name: "index_request_details_on_equipment_id"
    t.index ["request_id"], name: "index_request_details_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "phone"
    t.string "name"
    t.string "number"
    t.string "fax"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contacts", "providers"
  add_foreign_key "request_details", "chains"
  add_foreign_key "request_details", "equipment"
  add_foreign_key "request_details", "requests"
  add_foreign_key "requests", "users"
end
