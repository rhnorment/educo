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

ActiveRecord::Schema.define(version: 20150623153307) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body"
    t.string   "resource_id",   limit: 255, null: false
    t.string   "resource_type", limit: 255, null: false
    t.integer  "author_id"
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "slug",        limit: 255
    t.text     "summary"
    t.text     "description"
    t.date     "date"
    t.string   "time",        limit: 255
    t.string   "venue",       limit: 255
    t.string   "address1",    limit: 255
    t.string   "address2",    limit: 255
    t.string   "city",        limit: 255
    t.string   "state",       limit: 255
    t.string   "zip_code",    limit: 255
    t.string   "speaker",     limit: 255
    t.string   "title",       limit: 255
    t.text     "bio"
    t.string   "photo",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comments"
  end

  create_table "gallery_photos", force: :cascade do |t|
    t.string   "image_file"
    t.string   "caption"
    t.string   "category"
    t.boolean  "active",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "last_name",      limit: 255
    t.string   "email",          limit: 255
    t.string   "phone",          limit: 255
    t.integer  "trigger_tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "leadsource_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "title",      limit: 255
    t.text     "bio"
    t.string   "staff_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo",      limit: 255
  end

  create_table "visits", force: :cascade do |t|
    t.string   "student_name"
    t.string   "parent_name"
    t.string   "student_phone"
    t.string   "parent_phone"
    t.string   "student_email"
    t.string   "parent_email"
    t.date     "student_dob"
    t.date     "parent_dob"
    t.text     "travel_dates"
    t.text     "travel_times"
    t.string   "airport"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "special_requests"
  end

end
