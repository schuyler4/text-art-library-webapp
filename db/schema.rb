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

ActiveRecord::Schema.define(version: 20161207042059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animated_arts", force: :cascade do |t|
    t.string   "title"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "rating"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_arts_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "body"
    t.integer  "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_comments_on_art_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "slides", force: :cascade do |t|
    t.string   "text"
    t.integer  "animated_art_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["animated_art_id"], name: "index_slides_on_animated_art_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "arts", "users"
  add_foreign_key "comments", "arts"
  add_foreign_key "comments", "users"
  add_foreign_key "slides", "animated_arts"
end
