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

ActiveRecord::Schema.define(version: 2020_12_01_213054) do

  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.integer "character_level"
    t.string "character_race"
    t.string "character_class"
    t.integer "armor_class"
    t.integer "character_speed"
    t.integer "character_strength"
    t.integer "character_dexterity"
    t.integer "character_constitution"
    t.integer "character_intelligence"
    t.integer "character_wisdom"
    t.integer "character_charisma"
    t.string "weapon_proficiencies"
    t.string "armor_proficiencies"
    t.string "languages"
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.integer "age"
    t.date "birthdate"
  end

end
