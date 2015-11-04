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

ActiveRecord::Schema.define(version: 20151104073051) do

  create_table "bgg_accounts", force: :cascade do |t|
    t.string   "account_name"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "bgg_accounts", ["user_id"], name: "index_bgg_accounts_on_user_id"

  create_table "games", force: :cascade do |t|
    t.integer  "bgg_account_id"
    t.string   "bggid"
    t.string   "bgname"
    t.string   "yearpublished"
    t.string   "minplayers"
    t.string   "maxplayers"
    t.string   "playingtime"
    t.string   "minplayingtime"
    t.string   "maxplayingtime"
    t.string   "minage"
    t.text     "boardgamecategory"
    t.text     "boardgamemechanic"
    t.text     "boardgamedesigner"
    t.text     "boardgamepublisher"
    t.text     "boardgameexpansion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "games", ["bgg_account_id"], name: "index_games_on_bgg_account_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end