# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090915092142) do

  create_table "dominos", :force => true do |t|
    t.string   "First_name"
    t.string   "Last_name"
    t.string   "password"
    t.integer  "Phone_no"
    t.integer  "Age"
    t.string   "Company_name"
    t.text     "Address"
    t.string   "postcode"
    t.string   "State"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
