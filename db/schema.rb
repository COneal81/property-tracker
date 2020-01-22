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

ActiveRecord::Schema.define(version: 2020_01_22_143118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.integer "amount_owed"
    t.integer "amount_paid"
    t.string "due_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_properties", force: :cascade do |t|
    t.string "property_name"
    t.text "property_description"
    t.string "address"
    t.integer "monthly_rental_amount"
    t.integer "deposit_amount"
    t.integer "square_feet"
    t.boolean "leased", default: false
    t.string "contract_start_date"
    t.string "contract_end_date"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img_url"
    t.integer "tenant_id"
    t.integer "payment_id"
  end

  create_table "repairs", force: :cascade do |t|
    t.boolean "repair_needed", default: true
    t.text "repair_description"
    t.integer "repair_cost"
    t.boolean "repair_completed", default: false
    t.integer "rental_property_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string "renter"
    t.string "co_renter"
    t.string "address"
    t.string "renter_email"
    t.string "co_renter_email"
    t.string "renter_cell_phone"
    t.string "co_renter_cell_phone"
    t.string "payment_due_date"
    t.integer "deposit_amount_paid"
    t.integer "monthly_rental_amount_due"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
