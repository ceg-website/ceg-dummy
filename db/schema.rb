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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150929140313) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "sdesc"
    t.text     "body"
    t.string   "author"
    t.string   "fimage_file_name"
    t.string   "fimage_content_type"
    t.integer  "fimage_file_size"
    t.datetime "fimage_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "slug"
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "clubs", force: :cascade do |t|
    t.string   "cname"
    t.integer  "cid"
    t.text     "cbody"
    t.text     "extra"
    t.string   "cimage_file_name"
    t.string   "cimage_content_type"
    t.integer  "cimage_file_size"
    t.datetime "cimage_updated_at"
    t.string   "clink"
    t.string   "slug"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "clubs", ["slug"], name: "index_clubs_on_slug", unique: true

  create_table "departments", force: :cascade do |t|
    t.string   "dname"
    t.integer  "did"
    t.text     "body"
    t.text     "extra1"
    t.string   "dimage_file_name"
    t.string   "dimage_content_type"
    t.integer  "dimage_file_size"
    t.datetime "dimage_updated_at"
    t.string   "dlink"
    t.string   "slug"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "departments", ["slug"], name: "index_departments_on_slug", unique: true

  create_table "dept_faculs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "researches", force: :cascade do |t|
    t.string   "rname"
    t.integer  "rid"
    t.text     "rbody"
    t.text     "rextra"
    t.string   "rimage_file_name"
    t.string   "rimage_content_type"
    t.integer  "rimage_file_size"
    t.datetime "rimage_updated_at"
    t.string   "rlink"
    t.string   "slug"
    t.string   "rauthor"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "researches", ["slug"], name: "index_researches_on_slug", unique: true

  create_table "slugs", force: :cascade do |t|
    t.integer  "sluggable_id",                              null: false
    t.string   "sluggable_type",                            null: false
    t.boolean  "active",                     default: true, null: false
    t.string   "slug",           limit: 126,                null: false
    t.string   "scope",          limit: 126
    t.datetime "created_at"
  end

  add_index "slugs", ["sluggable_type", "scope", "slug"], name: "slugs_unique", unique: true
  add_index "slugs", ["sluggable_type", "sluggable_id", "active"], name: "slugs_for_record"

  create_table "staffnews", force: :cascade do |t|
    t.string   "stnews"
    t.integer  "stid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studentnews", force: :cascade do |t|
    t.string   "stnews"
    t.integer  "stid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
  add_index "version_associations", ["version_id"], name: "index_version_associations_on_version_id"

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                         null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 1073741823
    t.datetime "created_at"
    t.text     "object_changes", limit: 1073741823
    t.integer  "transaction_id"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  add_index "versions", ["transaction_id"], name: "index_versions_on_transaction_id"

end
