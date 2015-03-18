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

ActiveRecord::Schema.define(version: 20150317212320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer "post_id",  null: false
    t.string  "content",  null: false
    t.integer "owner_id"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "foodtypes", force: true do |t|
    t.string "title"
  end

  create_table "friendships", force: true do |t|
    t.integer "user_id",   null: false
    t.integer "friend_id", null: false
  end

  add_index "friendships", ["friend_id"], name: "index_friendships_on_friend_id", using: :btree
  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer "post_id",  null: false
    t.integer "owner_id", null: false
  end

  add_index "likes", ["post_id"], name: "index_likes_on_post_id", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "owner_id",             null: false
    t.string   "location"
    t.integer  "food_id",              null: false
    t.float    "price",                null: false
    t.integer  "num_meals"
    t.string   "image_url"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer "post_id",             null: false
    t.integer "user_id",             null: false
    t.integer "score",   default: 0
  end

  create_table "users", force: true do |t|
    t.string   "email",                null: false
    t.string   "password_digest",      null: false
    t.string   "session_token",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image_url"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree

end
