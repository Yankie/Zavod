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

ActiveRecord::Schema.define(:version => 20120312085548) do

  create_table "departments", :force => true do |t|
    t.integer  "department_number"
    t.integer  "factory_id"
    t.string   "chief_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "factories", :force => true do |t|
    t.integer  "factory_num"
    t.string   "name"
    t.string   "address"
    t.string   "ceo_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "parts", :force => true do |t|
    t.integer  "part_number"
    t.string   "name"
    t.integer  "prodict_id"
    t.decimal  "weight",        :precision => 10, :scale => 0
    t.string   "dimensions"
    t.integer  "supplier_id"
    t.date     "delivery_date"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "department_id"
    t.string   "name"
    t.decimal  "weight",        :precision => 10, :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.integer  "supplier_number"
    t.string   "name"
    t.string   "region"
    t.string   "address"
    t.string   "ceo_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
