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

ActiveRecord::Schema.define(version: 2019_01_31_010451) do

  create_table "com_de_coms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "commentaire_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentaire_id"], name: "index_com_de_coms_on_commentaire_id"
    t.index ["user_id"], name: "index_com_de_coms_on_user_id"
  end

  create_table "comdecoms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "commentaire_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentaire_id"], name: "index_comdecoms_on_commentaire_id"
    t.index ["user_id"], name: "index_comdecoms_on_user_id"
  end

  create_table "commentaires", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lien_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lien_id"], name: "index_commentaires_on_lien_id"
    t.index ["user_id"], name: "index_commentaires_on_user_id"
  end

  create_table "liens", force: :cascade do |t|
    t.integer "user_id"
    t.string "http"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_liens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
