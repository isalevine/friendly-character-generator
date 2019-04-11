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

ActiveRecord::Schema.define(version: 2019_04_10_200525) do

  create_table "archetypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_characters", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "archetype_id"
    t.integer "search_preference_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers_weights", force: :cascade do |t|
    t.integer "archetype_id"
    t.integer "more_damage"
    t.integer "prevent_damage"
    t.integer "super_stealth"
    t.integer "mind_control"
    t.integer "super_senses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_lists", force: :cascade do |t|
    t.integer "archetype_id"
    t.string "search_stat_pref"
    t.string "search_action_pref"
    t.string "search_power_pref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "search_preferences", force: :cascade do |t|
    t.integer "base_character_id"
    t.string "stat_preference"
    t.string "action_preference"
    t.string "power_preference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_weights", force: :cascade do |t|
    t.integer "archetype_id"
    t.integer "athletics_dodge"
    t.integer "awareness"
    t.integer "deception"
    t.integer "feats_of_strength"
    t.integer "intimidation"
    t.integer "investigation"
    t.integer "larceny_crime"
    t.integer "magic_computer"
    t.integer "performance"
    t.integer "persuasion"
    t.integer "socialize"
    t.integer "stealth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats_weights", force: :cascade do |t|
    t.integer "archetype_id"
    t.integer "charisma"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "stamina"
    t.integer "strength_magic"
    t.integer "wisdom_awareness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
