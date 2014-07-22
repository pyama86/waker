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

ActiveRecord::Schema.define(version: 20140722144813) do

  create_table "escalation_rules", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escalations", force: true do |t|
    t.integer  "escalate_to_id"
    t.string   "escalate_to_type"
    t.integer  "escalate_after"
    t.integer  "escalation_rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "escalations", ["escalate_to_id", "escalate_to_type"], name: "index_escalations_on_escalate_to_id_and_escalate_to_type"
  add_index "escalations", ["escalation_rule_id"], name: "index_escalations_on_escalation_rule_id"

  create_table "incidents", force: true do |t|
    t.text     "description"
    t.text     "details_json"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "incidents", ["provider_id"], name: "index_incidents_on_provider_id"

  create_table "notifiers", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.text     "details_json"
    t.integer  "user_id"
    t.integer  "notify_after"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifiers", ["user_id"], name: "index_notifiers_on_user_id"

  create_table "providers", force: true do |t|
    t.string   "name"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "details_json"
  end

  create_table "samples", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
