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

ActiveRecord::Schema.define(:version => 20111223110421) do

  create_table "compatibilities", :force => true do |t|
    t.date     "test_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "first_version_id"
    t.integer  "second_version_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", :force => true do |t|
    t.string   "version_string"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
