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

ActiveRecord::Schema.define(version: 2020_12_08_130739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rapidfire_answers", force: :cascade do |t|
    t.bigint "attempt_id"
    t.bigint "question_id"
    t.text "answer_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attempt_id"], name: "index_rapidfire_answers_on_attempt_id"
    t.index ["question_id"], name: "index_rapidfire_answers_on_question_id"
  end

  create_table "rapidfire_attempts", force: :cascade do |t|
    t.bigint "survey_id"
    t.string "user_type"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_rapidfire_attempts_on_survey_id"
    t.index ["user_id", "user_type"], name: "index_rapidfire_attempts_on_user_id_and_user_type"
    t.index ["user_type", "user_id"], name: "index_rapidfire_attempts_on_user_type_and_user_id"
  end

  create_table "rapidfire_questions", force: :cascade do |t|
    t.bigint "survey_id"
    t.string "type"
    t.string "question_text"
    t.string "default_text"
    t.string "placeholder"
    t.integer "position"
    t.text "answer_options"
    t.text "validation_rules"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_rapidfire_questions_on_survey_id"
  end

  create_table "rapidfire_surveys", force: :cascade do |t|
    t.string "name"
    t.text "introduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "after_survey_content"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
    t.string "username"
    t.string "password_digest"
  end

end
