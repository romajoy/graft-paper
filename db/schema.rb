# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_09_183935) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "street2"
    t.string "city"
    t.string "region"
    t.string "country"
    t.string "postal_code"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetups", force: :cascade do |t|
    t.bigint "person_id"
    t.datetime "when"
    t.bigint "location_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_meetups_on_location_id"
    t.index ["person_id"], name: "index_meetups_on_person_id"
  end

  create_table "persons", force: :cascade do |t|
    t.string "name"
    t.integer "matched_on"
    t.integer "age"
    t.string "from"
    t.boolean "still_interested", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
