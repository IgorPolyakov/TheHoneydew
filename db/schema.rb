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

ActiveRecord::Schema.define(version: 20170513114219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checks", force: :cascade do |t|
    t.integer  "amount"
    t.string   "checks_number"
    t.date     "deadline"
    t.string   "reason"
    t.string   "category"
    t.string   "violation"
    t.string   "response_measure"
    t.string   "direction"
    t.string   "term"
    t.string   "case_number"
    t.integer  "number_of_volumes"
    t.boolean  "for_office"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "inspector_id"
    t.index ["inspector_id"], name: "index_checks_on_inspector_id", using: :btree
  end

  create_table "inspectors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "position"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "last_name"
    t.string   "middle_name"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "company_name"
    t.string   "first_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "position"
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "middle_name"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "number"
    t.date     "deadline"
    t.integer  "inspector_id"
    t.string   "executive"
    t.string   "reason"
    t.string   "result"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["inspector_id"], name: "index_reports_on_inspector_id", using: :btree
  end

  add_foreign_key "checks", "inspectors"
  add_foreign_key "reports", "inspectors"
end
