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

ActiveRecord::Schema.define(:version => 20130922153031) do

  create_table "classy_classes", :force => true do |t|
    t.string   "name"
    t.string   "teacher"
    t.integer  "duration"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "belongs_to_day"
    t.integer  "belongs_to_user"
    t.string   "block"
    t.string   "classroom_number"
  end

  create_table "days", :force => true do |t|
    t.integer  "number"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "belongs_to_schedule"
    t.string   "order_of_blocks"
    t.integer  "belongs_to_school"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "date_of_event"
    t.integer  "belongs_to_user"
    t.boolean  "exception_day",     :default => false
    t.integer  "belongs_to_school"
  end

  create_table "schedules", :force => true do |t|
    t.integer  "number_of_days"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "belongs_to_user"
    t.integer  "number_of_blocks"
    t.datetime "start_time"
    t.integer  "buffer_time"
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "number_of_days"
    t.integer  "number_of_periods"
    t.datetime "start_time"
    t.integer  "buffer_time"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "remember_token"
    t.integer  "belongs_to_school"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
