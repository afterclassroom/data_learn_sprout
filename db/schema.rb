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

ActiveRecord::Schema.define(version: 20150512083313) do

  create_table "acts", force: true do |t|
    t.integer "student_id"
    t.integer "english_score"
    t.integer "reading_score"
    t.integer "science_score"
    t.integer "math_score"
  end

  create_table "attendance_codes", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.boolean "present"
    t.integer "school_id"
  end

  create_table "attendances", force: true do |t|
    t.integer "student_id"
    t.integer "school_id"
    t.integer "period_id"
    t.integer "attendance_code_id"
    t.integer "code_id"
    t.integer "section_id"
    t.date    "date"
  end

  create_table "course_grades", force: true do |t|
    t.float   "earned_credits",    limit: 24
    t.float   "gpa_points",        limit: 24
    t.string  "grade"
    t.integer "grade_level"
    t.float   "percent",           limit: 24
    t.float   "potential_credits", limit: 24
    t.integer "school_id"
    t.integer "section_id"
    t.integer "student_id"
    t.boolean "exclude_from_gpa"
  end

  create_table "courses", force: true do |t|
    t.integer "number"
    t.string  "name"
    t.integer "school_id"
    t.float   "units",     limit: 24
  end

  create_table "enrollments", force: true do |t|
    t.integer "student_id"
    t.integer "school_id"
    t.date    "entry_date"
    t.date    "exit_date"
    t.integer "grade_level"
  end

  create_table "periods", force: true do |t|
    t.integer "school_id"
    t.string  "name"
    t.string  "number"
  end

  create_table "rosters", force: true do |t|
    t.integer "section_id"
    t.integer "student_id"
    t.date    "entry_date"
    t.date    "exit_date"
  end

  create_table "sats", force: true do |t|
    t.integer "math_score"
    t.integer "verbal_score"
    t.integer "writing_score"
    t.integer "student_id"
  end

  create_table "schools", force: true do |t|
    t.string  "name"
    t.integer "number"
    t.string  "address_street"
    t.string  "address_city"
    t.string  "address_state"
    t.string  "address_zip"
    t.string  "phone"
  end

  create_table "sections", force: true do |t|
    t.integer "teacher_id"
    t.integer "school_id"
    t.integer "course_id"
    t.integer "term_id"
    t.string  "room"
  end

  create_table "students", force: true do |t|
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.string  "gender"
    t.string  "ethnicity"
    t.string  "lunch_status"
    t.string  "grade"
    t.date    "entry_date"
    t.date    "exit_date"
    t.date    "birthday"
    t.string  "phone"
    t.integer "school_id"
    t.string  "address_state"
    t.string  "address_city"
    t.string  "address_street"
    t.string  "address_zip"
    t.integer "number"
  end

  create_table "teachers", force: true do |t|
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.integer "school_id"
    t.string  "address_state"
    t.string  "address_city"
    t.string  "address_street"
    t.string  "address_zip"
    t.integer "number"
  end

  create_table "terms", force: true do |t|
    t.string  "name"
    t.date    "start_date"
    t.date    "end_date"
    t.integer "school_id"
  end

end
