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

ActiveRecord::Schema.define(version: 20140630081730) do

  create_table "page_tags", force: true do |t|
    t.integer  "page_id",    default: 0, null: false
    t.integer  "tag_id",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "web_id",                default: 0, null: false
    t.string   "locked_by",  limit: 60
    t.string   "name"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revisions", force: true do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.datetime "revised_at",                               null: false
    t.integer  "page_id",                     default: 0,  null: false
    t.text     "content",    limit: 16777215, default: "", null: false
    t.string   "author",     limit: 60
    t.string   "ip",         limit: 60
  end

  add_index "revisions", ["author"], name: "index_revisions_on_author"
  add_index "revisions", ["created_at"], name: "index_revisions_on_created_at"
  add_index "revisions", ["page_id"], name: "index_revisions_on_page_id"

  create_table "sessions", force: true do |t|
    t.string   "session_id"
    t.text     "data"
    t.datetime "updated_at"
    t.datetime "created_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id"

  create_table "tags", force: true do |t|
    t.string   "tag_name",   default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "webs", force: true do |t|
    t.string   "name",             limit: 60,  default: "",            null: false
    t.string   "address",          limit: 60,  default: "",            null: false
    t.string   "password",         limit: 60
    t.text     "additional_style", limit: 255
    t.integer  "allow_uploads",                default: 1
    t.integer  "published",                    default: 0
    t.integer  "count_pages",                  default: 0
    t.string   "markup",           limit: 50,  default: "markdownMML"
    t.string   "color",            limit: 6,   default: "008B26"
    t.integer  "max_upload_size",              default: 100
    t.integer  "safe_mode",                    default: 0
    t.integer  "brackets_only",                default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wiki_files", force: true do |t|
    t.integer  "web_id",      null: false
    t.string   "file_name",   null: false
    t.string   "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wiki_references", force: true do |t|
    t.integer  "page_id",                   default: 0,  null: false
    t.string   "referenced_name",           default: "", null: false
    t.string   "link_type",       limit: 1, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_references", ["page_id"], name: "index_wiki_references_on_page_id"
  add_index "wiki_references", ["referenced_name"], name: "index_wiki_references_on_referenced_name"

end
