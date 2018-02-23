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

ActiveRecord::Schema.define(version: 20180223101135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cvms", force: :cascade do |t|
    t.string "email"
    t.string "website"
    t.text "skill"
    t.text "interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "fname"
    t.string "mname"
    t.string "lname"
    t.string "street"
    t.string "district"
    t.string "country"
    t.string "land"
    t.string "mobile"
    t.index ["user_id"], name: "index_cvms_on_user_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "level"
    t.string "institute"
    t.string "year"
    t.string "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cvm_id"
    t.index ["cvm_id"], name: "index_educations_on_cvm_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.text "jobdetail"
    t.text "startdate"
    t.text "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cvm_id"
    t.index ["cvm_id"], name: "index_experiences_on_cvm_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "pname"
    t.text "description"
    t.string "startdate"
    t.string "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cvm_id"
    t.bigint "experience_id"
    t.index ["cvm_id"], name: "index_projects_on_cvm_id"
    t.index ["experience_id"], name: "index_projects_on_experience_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "cvms", "users"
  add_foreign_key "educations", "cvms"
  add_foreign_key "experiences", "cvms"
  add_foreign_key "projects", "cvms"
  add_foreign_key "projects", "experiences"
end
