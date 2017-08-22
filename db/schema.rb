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

ActiveRecord::Schema.define(version: 20170822214225) do

  create_table "errors", force: :cascade do |t|
    t.string   "min"
    t.string   "max"
    t.string   "time"
    t.string   "exps"
    t.integer  "machine_id"
    t.string   "line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "errors", ["machine_id"], name: "index_errors_on_machine_id"

  create_table "machines", force: :cascade do |t|
    t.string   "name"
    t.string   "mid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "machines", ["name"], name: "index_machines_on_name", unique: true

end
