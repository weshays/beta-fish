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

ActiveRecord::Schema.define(version: 20161104021059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.integer  "policy_id",                         null: false
    t.string   "business_name"
    t.string   "first_name",                        null: false
    t.string   "last_name",                         null: false
    t.integer  "strip_id"
    t.boolean  "active",            default: true,  null: false
    t.string   "address",                           null: false
    t.string   "address2"
    t.string   "city",                              null: false
    t.string   "state",                             null: false
    t.string   "postal_code",                       null: false
    t.string   "website"
    t.string   "email",                             null: false
    t.string   "phone_number",                      null: false
    t.float    "monthly_rate",      default: 0.0,   null: false
    t.string   "referrer",                          null: false
    t.boolean  "opt_in",            default: true,  null: false
    t.string   "source_lead"
    t.string   "source_lead_other"
    t.boolean  "lockout",           default: false, null: false
    t.string   "lockout_message"
    t.datetime "created_at"
    t.datetime "deleted_at"
  end

  create_table "feedback_entries", force: :cascade do |t|
    t.integer  "customer_id",      null: false
    t.string   "comprehension"
    t.string   "path"
    t.text     "comment"
    t.string   "browser"
    t.string   "operating_system"
    t.string   "resolution"
    t.datetime "viewed_at"
    t.datetime "archived_at"
    t.datetime "created_at"
    t.index ["comprehension"], name: "index_feedback_entries_on_comprehension", using: :btree
    t.index ["customer_id"], name: "index_feedback_entries_on_customer_id", using: :btree
  end

  create_table "feedback_entry_attachments", force: :cascade do |t|
    t.integer "feedback_entry_id"
    t.string  "file"
    t.integer "size"
  end

  create_table "grouped_permissions", force: :cascade do |t|
    t.integer "permission_id", null: false
    t.integer "policy_id",     null: false
    t.index ["permission_id", "policy_id"], name: "index_grouped_permissions_on_permission_id_and_policy_id", using: :btree
  end

  create_table "login_entries", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.index ["user_id"], name: "index_login_entries_on_user_id", using: :btree
  end

  create_table "permissions", force: :cascade do |t|
    t.string "group", null: false
    t.string "name",  null: false
    t.index ["group"], name: "index_permissions_on_group", using: :btree
  end

  create_table "policies", force: :cascade do |t|
    t.boolean  "default_policy", default: false, null: false
    t.string   "name",                           null: false
    t.datetime "created_at"
    t.index ["default_policy"], name: "index_policies_on_default_policy", using: :btree
    t.index ["name"], name: "index_policies_on_name", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "customer_id",        null: false
    t.integer  "user_id",            null: false
    t.string   "access_token",       null: false
    t.jsonb    "cached_customer"
    t.jsonb    "cached_user"
    t.jsonb    "cached_permissions"
    t.datetime "created_at"
    t.index ["access_token"], name: "index_sessions_on_access_token", using: :btree
  end

  create_table "signup_links", force: :cascade do |t|
    t.string   "signup_type",                              null: false
    t.integer  "customer_id"
    t.string   "business_name",                            null: false
    t.string   "address",                                  null: false
    t.string   "address2"
    t.string   "city",                                     null: false
    t.string   "state",                                    null: false
    t.string   "postal_code",                              null: false
    t.string   "website"
    t.string   "first_name",                               null: false
    t.string   "last_name",                                null: false
    t.string   "email",                                    null: false
    t.string   "phone_number",                             null: false
    t.string   "access_key",                               null: false
    t.string   "referrer",                                 null: false
    t.boolean  "opt_in",                   default: true,  null: false
    t.string   "source_lead"
    t.string   "source_lead_other"
    t.boolean  "processed_email",          default: false, null: false
    t.boolean  "processed_activation",     default: false, null: false
    t.boolean  "processed_payment_method", default: false, null: false
    t.datetime "created_at"
    t.index ["access_key"], name: "index_signup_links_on_access_key", using: :btree
    t.index ["customer_id"], name: "index_signup_links_on_customer_id", using: :btree
  end

  create_table "user_permissions", force: :cascade do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
    t.index ["user_id", "permission_id"], name: "index_user_permissions_on_user_id_and_permission_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "customer_id",                    null: false
    t.string   "first_name",                     null: false
    t.string   "last_name",                      null: false
    t.string   "email",                          null: false
    t.string   "password_digest",                null: false
    t.string   "password_change",  default: "f", null: false
    t.string   "perishable_token",               null: false
    t.datetime "created_at"
    t.datetime "deleted_at"
    t.index ["customer_id"], name: "index_users_on_customer_id", using: :btree
    t.index ["deleted_at"], name: "index_users_on_deleted_at", using: :btree
  end

end
