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

ActiveRecord::Schema.define(version: 20150720060405) do

  create_table "attendences", force: :cascade do |t|
    t.integer  "weixin_user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "message_id"
    t.string   "content"
  end

  add_index "attendences", ["message_id"], name: "index_attendences_on_message_id"
  add_index "attendences", ["weixin_user_id"], name: "index_attendences_on_weixin_user_id"

  create_table "messages", force: :cascade do |t|
    t.string   "to_user"
    t.string   "from_user"
    t.datetime "create_time"
    t.string   "msg_type"
    t.string   "content"
    t.string   "msg_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weixin_users", force: :cascade do |t|
    t.string   "name"
    t.string   "openid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end