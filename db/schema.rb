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

ActiveRecord::Schema.define(version: 2018_11_30_031800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "composers", force: :cascade do |t|
    t.text "surname"
    t.text "forename"
    t.text "city"
    t.integer "dob"
    t.integer "dod"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "thumbnail"
  end

  create_table "symphonies", force: :cascade do |t|
    t.text "name"
    t.text "key"
    t.text "opus"
    t.text "moniker"
    t.integer "year"
    t.integer "composer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "runtime"
  end

end
