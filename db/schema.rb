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

ActiveRecord::Schema.define(version: 20170403004242) do

  create_table "around_me", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.decimal  "longitude",            precision: 15, scale: 13
    t.decimal  "latitude",             precision: 15, scale: 13
    t.string   "around_me_event_type"
    t.integer  "around_me_event_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["around_me_event_type", "around_me_event_id"], name: "index_around_me_on_around_me_event_type_and_around_me_event_id", using: :btree
  end

  create_table "breeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors_found_dogs", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "found_dog_id"
    t.integer "color_id"
    t.index ["color_id"], name: "index_colors_found_dogs_on_color_id", using: :btree
    t.index ["found_dog_id"], name: "index_colors_found_dogs_on_found_dog_id", using: :btree
  end

  create_table "colors_pets", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "pet_id"
    t.integer "color_id"
    t.index ["color_id"], name: "index_colors_pets_on_color_id", using: :btree
    t.index ["pet_id"], name: "index_colors_pets_on_pet_id", using: :btree
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "pet_id"
    t.string   "pet_event_type"
    t.integer  "pet_event_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["pet_event_type", "pet_event_id"], name: "index_events_on_pet_event_type_and_pet_event_id", using: :btree
    t.index ["pet_id"], name: "index_events_on_pet_id", using: :btree
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "feedings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "found_dogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "breed_id",                  null: false
    t.integer  "weight_id",                 null: false
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["breed_id"], name: "index_found_dogs_on_breed_id", using: :btree
    t.index ["weight_id"], name: "index_found_dogs_on_weight_id", using: :btree
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "owner_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "fk_rails_5447bdb9c5", using: :btree
  end

  create_table "groups_users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_groups_users_on_group_id", using: :btree
    t.index ["user_id"], name: "index_groups_users_on_user_id", using: :btree
  end

  create_table "lost_dogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "pets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "breed_id",   null: false
    t.integer  "weight_id",  null: false
    t.index ["breed_id"], name: "index_pets_on_breed_id", using: :btree
    t.index ["group_id"], name: "index_pets_on_group_id", using: :btree
    t.index ["weight_id"], name: "index_pets_on_weight_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  create_table "walking_partners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "weights", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "start_weight"
    t.integer  "end_weight"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "colors_found_dogs", "colors"
  add_foreign_key "colors_found_dogs", "found_dogs"
  add_foreign_key "colors_pets", "colors"
  add_foreign_key "colors_pets", "pets"
  add_foreign_key "events", "pets"
  add_foreign_key "events", "users"
  add_foreign_key "found_dogs", "breeds"
  add_foreign_key "found_dogs", "weights"
  add_foreign_key "groups", "users", column: "owner_id"
  add_foreign_key "groups_users", "groups"
  add_foreign_key "groups_users", "users"
  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "groups"
  add_foreign_key "pets", "weights"
end
