# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_19_145219) do
  create_table "amenities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amenity_type_rooms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "type_room_id", null: false
    t.bigint "amenity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "fk_rails_c6c59e74bf"
    t.index ["type_room_id"], name: "fk_rails_122c62c165"
  end

  create_table "reservations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "room_service_id", null: false
    t.datetime "checkin_at", null: false
    t.datetime "checkout_at", null: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_service_id"], name: "fk_rails_5005c25390"
    t.index ["user_id"], name: "fk_rails_48a92fce51"
  end

  create_table "room_services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "room_id", null: false
    t.bigint "quantity", null: false
    t.string "status", null: false
    t.datetime "order_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "fk_rails_61ed02cbe7"
    t.index ["service_id"], name: "fk_rails_c79ca4b9b0"
  end

  create_table "rooms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "type_room_id", null: false
    t.bigint "room_code", null: false
    t.bigint "floor", null: false
    t.string "description", null: false
    t.bigint "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_room_id"], name: "fk_rails_f6597fcc9d"
  end

  create_table "services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "price", null: false
    t.bigint "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_room_images", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "type_room_id", null: false
    t.string "link", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_room_id"], name: "fk_rails_1bfba2e198"
  end

  create_table "type_rooms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "type", null: false
    t.bigint "adult_capacity", null: false
    t.bigint "kids_capacity", null: false
    t.bigint "base_price", null: false
    t.bigint "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "surname", null: false
    t.string "city", null: false
    t.string "district", null: false
    t.string "ward", null: false
    t.string "address", null: false
    t.bigint "id_card", null: false
    t.string "phone", null: false
    t.string "email", null: false
    t.datetime "birth_day", null: false
    t.string "gender", null: false
    t.bigint "position", null: false
    t.bigint "salary"
    t.string "link_avatar", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "amenity_type_rooms", "amenities"
  add_foreign_key "amenity_type_rooms", "type_rooms"
  add_foreign_key "reservations", "room_services"
  add_foreign_key "reservations", "users"
  add_foreign_key "room_services", "rooms"
  add_foreign_key "room_services", "services"
  add_foreign_key "rooms", "type_rooms"
  add_foreign_key "type_room_images", "type_rooms"
end
