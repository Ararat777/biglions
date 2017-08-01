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

ActiveRecord::Schema.define(version: 20170730184225) do

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "meta_title"
    t.string   "meta_description"
    t.integer  "parent_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "indents", force: :cascade do |t|
    t.string   "title"
    t.string   "image_url"
    t.string   "body"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_indents_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "nav_name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_pages_on_category_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "name"
    t.string   "site"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
