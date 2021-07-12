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

ActiveRecord::Schema.define(version: 2021_07_12_002724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "days", force: :cascade do |t|
    t.bigint "profile_routines_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_routines_id"], name: "index_days_on_profile_routines_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.float "increment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profile_routines", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "routine_id"
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_profile_routines_on_profile_id"
    t.index ["routine_id"], name: "index_profile_routines_on_routine_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "full_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_profiles_on_account_id"
  end

  create_table "routines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "template_days", force: :cascade do |t|
    t.bigint "routine_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["routine_id"], name: "index_template_days_on_routine_id"
  end

  create_table "template_exercises", force: :cascade do |t|
    t.bigint "template_day_id"
    t.bigint "exercise_id"
    t.integer "sets"
    t.integer "reps"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exercise_id"], name: "index_template_exercises_on_exercise_id"
    t.index ["template_day_id"], name: "index_template_exercises_on_template_day_id"
  end

  create_table "training_sets", force: :cascade do |t|
    t.bigint "day_id"
    t.bigint "exercise_id"
    t.integer "reps"
    t.float "weight"
    t.boolean "completed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["day_id"], name: "index_training_sets_on_day_id"
    t.index ["exercise_id"], name: "index_training_sets_on_exercise_id"
  end

  add_foreign_key "profiles", "accounts"
end
