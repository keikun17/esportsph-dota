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

ActiveRecord::Schema.define(version: 20130727124901) do

  create_table "admins", force: true do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "hero_bans", force: true do |t|
    t.integer "team_id"
    t.integer "match_id"
    t.integer "hero_id"
  end

  create_table "heroes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.string   "name"
    t.integer  "winning_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "duration",        default: 0
  end

  add_index "matches", ["winning_team_id"], name: "index_matches_on_winning_team_id", using: :btree

  create_table "player_stats", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.integer  "hero_id"
    t.integer  "kills"
    t.integer  "deaths"
    t.integer  "assists"
    t.integer  "gold"
    t.integer  "apm"
    t.integer  "creep_kills"
    t.integer  "creep_denies"
    t.integer  "experience",   default: 0
    t.integer  "strength",     default: 0
    t.integer  "vitality",     default: 0
    t.integer  "intelligence", default: 0
  end

  add_index "player_stats", ["hero_id"], name: "index_player_stats_on_hero_id", using: :btree
  add_index "player_stats", ["match_id"], name: "index_player_stats_on_match_id", using: :btree
  add_index "player_stats", ["player_id"], name: "index_player_stats_on_player_id", using: :btree
  add_index "player_stats", ["team_id"], name: "index_player_stats_on_team_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "team_matches", force: true do |t|
    t.integer  "match_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_matches", ["match_id"], name: "index_team_matches_on_match_id", using: :btree
  add_index "team_matches", ["team_id"], name: "index_team_matches_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
