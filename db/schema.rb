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

ActiveRecord::Schema.define(version: 20151026025257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_influencers", force: :cascade do |t|
    t.integer "book_id"
    t.integer "influencer_id"
  end

  add_index "books_influencers", ["book_id"], name: "index_books_influencers_on_book_id", using: :btree
  add_index "books_influencers", ["influencer_id"], name: "index_books_influencers_on_influencer_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "date"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "influencers", force: :cascade do |t|
    t.string   "name"
    t.boolean  "author"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text     "quotation"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "quotes", ["book_id"], name: "index_quotes_on_book_id", using: :btree

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
