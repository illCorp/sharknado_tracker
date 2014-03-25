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

ActiveRecord::Schema.define(version: 20140325023543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "illlocation_checkins", force: true do |t|
    t.integer  "location_id"
    t.integer  "locatable_id"
    t.string   "locatable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "illlocation_checkins", ["locatable_id", "locatable_type"], :name => "index_illlocation_checkins_on_locatable_id_and_locatable_type"
  add_index "illlocation_checkins", ["location_id"], :name => "index_illlocation_checkins_on_location_id"

  create_table "illlocation_locations", force: true do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.spatial  "latlon",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.string   "altitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
