# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_27_052304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_orders", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_orders_on_customer_id"
    t.index ["order_id"], name: "index_customer_orders_on_order_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email"
    t.string "company_name"
    t.string "refer_by"
    t.bigint "mobile_no"
    t.text "address"
    t.string "city"
    t.boolean "customer_active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_type"
    t.datetime "shipped_date"
    t.string "ship_via"
    t.string "ship_courier_name"
    t.string "shipping_address"
    t.bigint "unit_of_order"
    t.bigint "total_amount"
    t.bigint "paid_amount"
    t.bigint "balance_amount"
    t.bigint "transport_amount"
    t.bigint "order_product_price"
    t.string "note"
    t.boolean "order_active", default: true
    t.bigint "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.bigint "product_unit_price"
    t.string "supplier_name"
    t.bigint "unit_in_stock"
    t.bigint "units_of_order"
    t.boolean "product_active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
