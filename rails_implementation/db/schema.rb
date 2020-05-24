# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_18_141656) do

  create_table "campuses", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_campuses_on_code", unique: true
  end

  create_table "clazzes", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "teacher_id"
    t.integer "grade"
    t.integer "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_clazzes_on_code", unique: true
    t.index ["department_id"], name: "index_clazzes_on_department_id"
    t.index ["teacher_id"], name: "index_clazzes_on_teacher_id"
  end

  create_table "course_selections", force: :cascade do |t|
    t.integer "open_course_id", null: false
    t.integer "student_id", null: false
    t.string "score"
    t.string "term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["open_course_id"], name: "index_course_selections_on_open_course_id"
    t.index ["student_id"], name: "index_course_selections_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "department_id", null: false
    t.string "assessment_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_courses_on_code", unique: true
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "address"
    t.integer "teacher_id"
    t.integer "campus_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campus_id"], name: "index_departments_on_campus_id"
    t.index ["code"], name: "index_departments_on_code", unique: true
    t.index ["teacher_id"], name: "index_departments_on_teacher_id"
  end

  create_table "open_courses", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "teacher_id"
    t.string "term"
    t.string "schedule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_open_courses_on_course_id"
    t.index ["teacher_id"], name: "index_open_courses_on_teacher_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "id_number"
    t.string "id_type"
    t.string "name"
    t.string "gender"
    t.date "birthday"
    t.string "nationality"
    t.string "home_address"
    t.string "home_postcode"
    t.string "phone_number"
    t.string "email"
    t.string "type"
    t.string "student_id"
    t.integer "clazz_id"
    t.string "work_id"
    t.string "title"
    t.integer "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clazz_id"], name: "index_people_on_clazz_id"
    t.index ["department_id"], name: "index_people_on_department_id"
    t.index ["id_number"], name: "index_people_on_id_number", unique: true
    t.index ["student_id"], name: "index_people_on_student_id", unique: true
    t.index ["work_id"], name: "index_people_on_work_id", unique: true
  end

  create_table "status_changes", force: :cascade do |t|
    t.string "code"
    t.string "type"
    t.date "happened_at"
    t.string "new_clazz_code"
    t.string "original_clazz_code"
    t.integer "student_id", null: false
    t.string "youth_league_status"
    t.text "reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_status_changes_on_code", unique: true
    t.index ["student_id"], name: "index_status_changes_on_student_id"
  end

  add_foreign_key "clazzes", "departments"
  add_foreign_key "clazzes", "people", column: "teacher_id"
  add_foreign_key "course_selections", "open_courses"
  add_foreign_key "course_selections", "people", column: "student_id"
  add_foreign_key "courses", "departments"
  add_foreign_key "departments", "campuses"
  add_foreign_key "departments", "people", column: "teacher_id"
  add_foreign_key "open_courses", "courses"
  add_foreign_key "open_courses", "people", column: "teacher_id"
  add_foreign_key "people", "clazzes"
  add_foreign_key "people", "departments"
  add_foreign_key "status_changes", "people", column: "student_id"
end
