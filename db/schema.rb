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

ActiveRecord::Schema.define(version: 20170715175815) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
    t.index ["permalink"], name: "index_categories_on_permalink", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "external_id"
    t.string   "name"
    t.text     "resume",         limit: 65535
    t.text     "description",    limit: 65535
    t.integer  "price"
    t.integer  "price_old"
    t.date     "modified"
    t.string   "pixel"
    t.string   "external_url"
    t.string   "fabricante"
    t.string   "delivery_time"
    t.string   "image_large"
    t.string   "image_short"
    t.string   "image_medium"
    t.integer  "shipping_price"
    t.integer  "category_id"
    t.integer  "source_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "permalink"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["permalink"], name: "index_products_on_permalink", using: :btree
    t.index ["source_id"], name: "index_products_on_source_id", using: :btree
  end

  create_table "provinces", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "idx"
    t.string   "nombre"
    t.integer  "country_id"
    t.string   "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
    t.index ["permalink"], name: "index_provinces_on_permalink", using: :btree
  end

  create_table "sources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
    t.index ["permalink"], name: "index_sources_on_permalink", using: :btree
  end

end
