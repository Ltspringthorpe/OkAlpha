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

ActiveRecord::Schema.define(version: 20160730013326) do

  create_table "interests", force: :cascade do |t|
    t.string   "interest",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "interests", ["interest", "user_id"], name: "index_interests_on_interest_and_user_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "liked_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id",                       null: false
    t.integer  "receiver_id",                     null: false
    t.boolean  "read",            default: false, null: false
    t.text     "body"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "sender_delete",   default: false, null: false
    t.boolean  "receiver_delete", default: false, null: false
  end

  add_index "messages", ["sender_id", "receiver_id"], name: "index_messages_on_sender_id_and_receiver_id"

  create_table "users", force: :cascade do |t|
    t.string   "username",                                                                                                                      null: false
    t.string   "gender"
    t.string   "preferred_gender"
    t.string   "email"
    t.string   "image_url",        default: "https://res.cloudinary.com/jolinar1013/image/upload/v1456866249/OkAlpha/jwfs0vwpxfohk7aciiv1.png"
    t.string   "bio"
    t.string   "session_token",                                                                                                                 null: false
    t.string   "password_digest",                                                                                                               null: false
    t.datetime "created_at",                                                                                                                    null: false
    t.datetime "updated_at",                                                                                                                    null: false
  end

  add_index "users", ["username", "session_token"], name: "index_users_on_username_and_session_token", unique: true

end
