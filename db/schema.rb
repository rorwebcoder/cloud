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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130531024140) do

  create_table "carriers", :force => true do |t|
    t.string "carrier_name"
    t.string "carrier_description"
  end

  create_table "loads", :force => true do |t|
    t.string  "bill_of_lading"
    t.integer "carrier_id"
    t.integer "vendor_id"
    t.integer "shipper_id"
    t.string  "equipment_type"
    t.string  "inco_terms"
    t.string  "freight_terms"
    t.string  "mode"
  end

  create_table "messages", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "load_id"
    t.string   "ancestry"
  end

  add_index "messages", ["ancestry"], :name => "index_messages_on_ancestry"

  create_table "shippers", :force => true do |t|
    t.string "shipper_name"
    t.string "shipper_description"
  end

  create_table "stops", :force => true do |t|
    t.integer "load_id"
    t.string  "stop_type"
    t.integer "stop_sequence"
    t.string  "stop_name"
    t.string  "stop_address"
    t.string  "stop_city"
    t.string  "stop_state"
    t.string  "stop_country"
    t.integer "stop_postal"
  end

  create_table "vendors", :force => true do |t|
    t.string "vendor_name"
    t.string "vendor_description"
  end

end
