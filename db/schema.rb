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

ActiveRecord::Schema.define(version: 20170315205334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checks", force: :cascade do |t|
    t.integer  "count"
    t.string   "name"
    t.datetime "deadline"
    t.string   "object"
    t.string   "category"
    t.integer  "tom"
    t.string   "dsp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checks_people", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "check_id",  null: false
  end

  create_table "inspectors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "last_name"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "boss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "number"
    t.datetime "dead_line"
    t.integer  "inspector_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["inspector_id"], name: "index_reports_on_inspector_id", using: :btree
  end

  add_foreign_key "reports", "inspectors"
end
