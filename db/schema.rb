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

ActiveRecord::Schema.define(version: 20180204221924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_checks", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "category_id", null: false
  end

  create_table "checks", id: :serial, force: :cascade do |t|
    t.integer "amount"
    t.string "checks_number"
    t.date "check_finish"
    t.string "reason"
    t.string "category"
    t.string "violation"
    t.string "response_measure"
    t.string "direction_status"
    t.string "case_number"
    t.integer "number_of_volumes"
    t.boolean "for_office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "inspector_id"
    t.string "executive"
    t.boolean "controll"
    t.string "direction_author"
    t.string "direction_where"
    t.date "check_start"
    t.date "check_remark_destroy"
    t.string "title_check"
    t.index ["inspector_id"], name: "index_checks_on_inspector_id"
  end

  create_table "checks_direction_statuses", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "direction_status_id", null: false
  end

  create_table "checks_organizations", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "organization_id", null: false
  end

  create_table "checks_people", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "person_id", null: false
  end

  create_table "checks_reasons", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "reason_id", null: false
  end

  create_table "checks_response_measures", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "response_measure_id", null: false
  end

  create_table "checks_violations", id: false, force: :cascade do |t|
    t.bigint "check_id", null: false
    t.bigint "violation_id", null: false
  end

  create_table "direction_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspectors", id: :serial, force: :cascade do |t|
    t.string "first_name"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "middle_name"
  end

  create_table "organizations", id: :serial, force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "position"
    t.bigint "person_id"
    t.index ["person_id"], name: "index_organizations_on_person_id"
  end

  create_table "people", id: :serial, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "middle_name"
  end

  create_table "reasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reasons_reports", id: false, force: :cascade do |t|
    t.bigint "report_id", null: false
    t.bigint "reason_id", null: false
  end

  create_table "reports", id: :serial, force: :cascade do |t|
    t.string "number"
    t.date "create_report"
    t.date "deadline"
    t.integer "inspector_id"
    t.string "executive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organization_id"
    t.string "title_report"
    t.index ["inspector_id"], name: "index_reports_on_inspector_id"
    t.index ["organization_id"], name: "index_reports_on_organization_id"
  end

  create_table "reports_results", id: false, force: :cascade do |t|
    t.bigint "report_id", null: false
    t.bigint "result_id", null: false
  end

  create_table "response_measures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "login", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "is_admin", default: false, null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["login"], name: "index_users_on_login", unique: true
  end

  create_table "violations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "checks", "inspectors"
  add_foreign_key "organizations", "people"
  add_foreign_key "reports", "inspectors"
  add_foreign_key "reports", "organizations"
end
