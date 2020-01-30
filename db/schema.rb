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

ActiveRecord::Schema.define(version: 2020_01_30_004343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invoices", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.string "material_name"
    t.float "material_cost"
    t.string "labor_name"
    t.float "labor_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_invoices_on_project_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.string "title"
    t.string "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_posts_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "homeowner_id", null: false
    t.bigint "contractor_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contractor_id"], name: "index_projects_on_contractor_id"
    t.index ["homeowner_id"], name: "index_projects_on_homeowner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "invoices", "projects"
  add_foreign_key "posts", "projects"
  add_foreign_key "projects", "users", column: "contractor_id"
  add_foreign_key "projects", "users", column: "homeowner_id"
end
