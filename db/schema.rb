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

ActiveRecord::Schema.define(version: 20151129233123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.string   "title"
    t.string   "required_trainings"
    t.string   "description"
    t.string   "duration"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "org_name"
    t.string   "org_address"
    t.string   "org_city"
    t.string   "org_state"
    t.string   "org_phone"
    t.string   "org_website"
    t.string   "org_contactname"
    t.string   "org_contactphone"
    t.boolean  "fes_certified"
    t.string   "member_type"
    t.date     "membership_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "trainer1"
    t.string   "trainer2"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "trainings", ["category_id"], name: "index_trainings_on_category_id", using: :btree

  add_foreign_key "trainings", "categories"
end
