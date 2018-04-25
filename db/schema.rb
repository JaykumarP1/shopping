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

ActiveRecord::Schema.define(version: 2018_04_25_095809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addrs", force: :cascade do |t|
    t.string "door_no"
    t.text "street"
    t.string "city"
    t.string "state"
    t.string "code"
    t.string "orderable_type"
    t.bigint "orderable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orderable_type", "orderable_id"], name: "index_addrs_on_orderable_type_and_orderable_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "payment_mode"
    t.datetime "DOP"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.bigint "shop_id"
    t.bigint "product_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["shop_id"], name: "index_orders_on_shop_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "shops"
end
