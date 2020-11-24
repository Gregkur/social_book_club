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

ActiveRecord::Schema.define(version: 2020_11_24_105520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookclub_books", force: :cascade do |t|
    t.bigint "bookclub_id", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_bookclub_books_on_book_id"
    t.index ["bookclub_id"], name: "index_bookclub_books_on_bookclub_id"
  end

  create_table "bookclub_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bookclub_id", null: false
    t.index ["bookclub_id"], name: "index_bookclub_users_on_bookclub_id"
    t.index ["user_id"], name: "index_bookclub_users_on_user_id"
  end

  create_table "bookclubs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "visibility", default: true
    t.bigint "user_id", null: false
    t.bigint "thread_bookclub_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["thread_bookclub_id"], name: "index_bookclubs_on_thread_bookclub_id"
    t.index ["user_id"], name: "index_bookclubs_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "from"
    t.date "until"
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_bookings_on_book_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.text "description"
    t.string "year"
    t.integer "pages"
    t.boolean "availability", default: true
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "book_rating"
    t.text "book_comment"
    t.float "user_rating"
    t.text "user_comment"
    t.bigint "book_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "thread_bookclubs", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.bigint "comment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_thread_bookclubs_on_comment_id"
    t.index ["user_id"], name: "index_thread_bookclubs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookclub_books", "bookclubs"
  add_foreign_key "bookclub_books", "books"
  add_foreign_key "bookclub_users", "bookclubs"
  add_foreign_key "bookclub_users", "users"
  add_foreign_key "bookclubs", "thread_bookclubs"
  add_foreign_key "bookclubs", "users"
  add_foreign_key "bookings", "books"
  add_foreign_key "bookings", "users"
  add_foreign_key "books", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
  add_foreign_key "thread_bookclubs", "comments"
  add_foreign_key "thread_bookclubs", "users"
end
