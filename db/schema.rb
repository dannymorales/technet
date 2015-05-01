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

ActiveRecord::Schema.define(version: 20150430193753) do

  create_table "categories", force: :cascade do |t|
    t.string "cname"
    t.string "ctype"
    t.string "cfunction"
  end

  create_table "categories_posts", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "post_id",     null: false
  end

  create_table "categorization", id: false, force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "department_id", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string  "name"
    t.string  "address"
    t.integer "telephone"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "function"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "posts"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.string  "type"
    t.integer "size"
    t.decimal "value"
    t.string  "category"
  end

  create_table "profile", force: :cascade do |t|
    t.string  "membership"
    t.string  "billing"
    t.string  "plan"
    t.string  "privileges"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "fname"
    t.string  "lname"
    t.string  "email"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.integer "zipcode"
    t.string  "country"
    t.string  "password"
    t.string  "repassword"
  end

end
