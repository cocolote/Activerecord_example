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

ActiveRecord::Schema.define(version: 20150317155709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: true do |t|
    t.string   "title",        null: false
    t.integer  "publish_year", null: false
    t.string   "isbn",         null: false
    t.string   "publisher",    null: false
    t.text     "description",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "author"
    t.integer  "rating"
  end

  add_index "books", ["isbn"], name: "index_books_on_isbn", unique: true, using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", force: true do |t|
    t.integer  "book_id",     null: false
    t.integer  "category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checkouts", force: true do |t|
    t.datetime "due_date",      default: '2015-03-31 15:05:19', null: false
    t.string   "reader_name",                                   null: false
    t.datetime "date_returned",                                 null: false
    t.integer  "book_id",                                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
