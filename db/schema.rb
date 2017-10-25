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

ActiveRecord::Schema.define(version: 20171021202136) do

  create_table "cadets", force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.integer "document", null: false
    t.string "doc_pdf_path"
    t.integer "state"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_photo_file_name"
    t.string "profile_photo_content_type"
    t.integer "profile_photo_file_size"
    t.datetime "profile_photo_updated_at"
    t.string "license_file_name"
    t.string "license_content_type"
    t.integer "license_file_size"
    t.datetime "license_updated_at"
    t.index ["email"], name: "index_cadets_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cadets_on_reset_password_token", unique: true
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "percentage"
    t.boolean "used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_discounts_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "emitted_by_id"
    t.string "code"
    t.boolean "used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emitted_by_id"], name: "index_invitations_on_emitted_by_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "cadet_id"
    t.string "sender_address"
    t.string "receiver_address"
    t.decimal "distance"
    t.decimal "price"
    t.datetime "requested_date"
    t.datetime "received_date"
    t.integer "payment_method"
    t.integer "comission_payed_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cadet_id"], name: "index_shipments_on_cadet_id"
    t.index ["receiver_id"], name: "index_shipments_on_receiver_id"
    t.index ["sender_id"], name: "index_shipments_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.integer "document"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "provider"
    t.string "uid"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
