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

ActiveRecord::Schema.define(version: 20130708223834) do

  create_table "hero_selections", force: true do |t|
    t.integer "player_match_id"
    t.integer "hero_id"
  end

  add_index "hero_selections", ["hero_id"], name: "index_hero_selections_on_hero_id", using: :btree
  add_index "hero_selections", ["player_match_id"], name: "index_hero_selections_on_player_match_id", using: :btree

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
  end

  add_index "matches", ["winning_team_id"], name: "index_matches_on_winning_team_id", using: :btree

  create_table "player_matches", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_matches", ["match_id"], name: "index_player_matches_on_match_id", using: :btree
  add_index "player_matches", ["player_id"], name: "index_player_matches_on_player_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
