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

ActiveRecord::Schema.define(:version => 20131020163710) do

  create_table "contacts", :force => true do |t|
    t.string   "contact_type"
    t.string   "contact_name"
    t.string   "provider"
    t.string   "username"
    t.string   "account_number"
    t.boolean  "is_primary"
    t.boolean  "is_billing"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "person_id"
  end

  create_table "people", :force => true do |t|
    t.string   "salutation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "other_name"
    t.string   "birth_place"
    t.string   "birth_country"
    t.date     "birth_date"
    t.string   "id_type"
    t.string   "id_num"
    t.string   "id_state"
    t.boolean  "primary_contact"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "units", :force => true do |t|
    t.text     "tax_assesor_id"
    t.text     "legal_owner"
    t.text     "building"
    t.text     "unit"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
