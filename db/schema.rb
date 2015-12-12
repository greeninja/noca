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

ActiveRecord::Schema.define(version: 20151211184337) do

  create_table "change_comments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "changes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incident_updates", force: :cascade do |t|
    t.integer  "incident_id", limit: 4
    t.text     "cs_update",   limit: 65535
    t.text     "tech_update", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "incident_updates", ["incident_id"], name: "index_incident_updates_on_incident_id", using: :btree

  create_table "incidents", force: :cascade do |t|
    t.string   "title",            limit: 200
    t.string   "source",           limit: 100
    t.string   "incident_manager", limit: 255,                 null: false
    t.string   "impact",           limit: 255
    t.string   "platform",         limit: 255
    t.boolean  "cs_status",                    default: false
    t.boolean  "tech_status",                  default: false
    t.datetime "update_due"
    t.boolean  "callout",                      default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "severity",         limit: 4
  end

  create_table "settings", force: :cascade do |t|
    t.string   "setting_model", limit: 255,   null: false
    t.string   "setting_name",  limit: 255,   null: false
    t.text     "setting_value", limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "setting_nice",  limit: 255
  end

  add_index "settings", ["setting_model"], name: "index_settings_on_setting_model", using: :btree
  add_index "settings", ["setting_name"], name: "index_settings_on_setting_name", using: :btree

end
