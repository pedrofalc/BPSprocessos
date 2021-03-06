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

ActiveRecord::Schema.define(version: 20160201204806) do

  create_table "selections", force: :cascade do |t|
    t.string   "name"
    t.date     "end"
    t.integer  "owner"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.string   "notice"
  end

  create_table "selections_students", force: :cascade do |t|
  end

  create_table "selections_teachers", force: :cascade do |t|
    t.integer "selection_id"
    t.integer "teachers_id"
  end

  add_index "selections_teachers", ["selection_id"], name: "index_selections_teachers_on_selection_id"
  add_index "selections_teachers", ["teachers_id"], name: "index_selections_teachers_on_teachers_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "selection_id"
    t.string   "history"
    t.string   "resume"
    t.integer  "nota1"
    t.integer  "nota2"
    t.integer  "nota3"
  end

  create_table "students_selections", force: :cascade do |t|
    t.integer "student_id"
    t.integer "selection_id"
  end

  add_index "students_selections", ["selection_id"], name: "index_students_selections_on_selection_id"
  add_index "students_selections", ["student_id"], name: "index_students_selections_on_student_id"

  create_table "teachers", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true

  create_table "teachers_selections", force: :cascade do |t|
  end

end
