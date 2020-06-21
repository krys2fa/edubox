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

ActiveRecord::Schema.define(version: 20200621112736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "dob"
    t.date "enrolled"
    t.date "completed"
    t.boolean "express", default: false
    t.integer "quantity"
    t.string "studentid"
    t.string "department"
    t.string "college"
    t.text "school"
    t.text "phone"
    t.text "programme"
    t.text "address"
    t.text "reason"
    t.boolean "processed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "delivered", default: false
    t.bigint "institution_id"
    t.string "acceptance_letter_file_name"
    t.string "acceptance_letter_content_type"
    t.integer "acceptance_letter_file_size"
    t.datetime "acceptance_letter_updated_at"
    t.string "student_id_file_name"
    t.string "student_id_content_type"
    t.integer "student_id_file_size"
    t.datetime "student_id_updated_at"
    t.float "longitude"
    t.float "latitude"
    t.integer "document"
    t.index ["institution_id"], name: "index_applications_on_institution_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.text "name"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_colleges_on_institution_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.text "name"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_faculties_on_institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.text "name"
    t.text "location"
    t.text "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programmes", force: :cascade do |t|
    t.text "name"
    t.bigint "college_id"
    t.bigint "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_programmes_on_college_id"
    t.index ["faculty_id"], name: "index_programmes_on_faculty_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "agent", default: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "institutions"
  add_foreign_key "applications", "users"
  add_foreign_key "colleges", "institutions"
  add_foreign_key "faculties", "institutions"
  add_foreign_key "programmes", "colleges"
  add_foreign_key "programmes", "faculties"
end
