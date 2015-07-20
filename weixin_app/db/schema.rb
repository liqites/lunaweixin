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

ActiveRecord::Schema.define(version: 20150720043055) do

  create_table "attendences", force: :cascade do |t|
    t.integer  "weixin_user_id"
    t.string   "message"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "message_id"
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

  create_table "weixin_users", force: :cascade do |t|
    t.string   "name"
    t.string   "openid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
