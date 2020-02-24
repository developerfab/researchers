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

ActiveRecord::Schema.define(version: 2020_02_24_002127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcements", force: :cascade do |t|
    t.string "name"
    t.string "entity_id"
    t.datetime "announcement_date"
  end

  create_table "announcements_researchers", id: false, force: :cascade do |t|
    t.bigint "researcher_id"
    t.bigint "announcement_id"
    t.index ["announcement_id"], name: "index_announcements_researchers_on_announcement_id"
    t.index ["researcher_id"], name: "index_announcements_researchers_on_researcher_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "entity_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "discipline_id", null: false
    t.index ["discipline_id"], name: "index_areas_on_discipline_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
  end

  create_table "educations", force: :cascade do |t|
    t.string "level_entity_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "job_levels", force: :cascade do |t|
    t.string "class_id_entity"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "town"
    t.string "state"
    t.string "country"
    t.string "dane_code"
    t.string "region"
    t.string "location_entity_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "researcher_educations", force: :cascade do |t|
    t.bigint "researcher_id"
    t.bigint "education_id"
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["education_id"], name: "index_researcher_educations_on_education_id"
    t.index ["researcher_id"], name: "index_researcher_educations_on_researcher_id"
  end

  create_table "researcher_job_levels", force: :cascade do |t|
    t.bigint "job_level_id"
    t.bigint "researcher_id"
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_level_id"], name: "index_researcher_job_levels_on_job_level_id"
    t.index ["researcher_id"], name: "index_researcher_job_levels_on_researcher_id"
  end

  create_table "researchers", force: :cascade do |t|
    t.datetime "birthdate"
    t.float "age"
    t.string "gender"
    t.string "id_gender_entity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialization_areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "area_id", null: false
    t.index ["area_id"], name: "index_specialization_areas_on_area_id"
  end

  add_foreign_key "areas", "disciplines"
  add_foreign_key "specialization_areas", "areas"
end
