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

ActiveRecord::Schema.define(version: 20140219074519) do

  create_table "addresses", force: true do |t|
    t.string   "province"
    t.string   "city"
    t.string   "area"
    t.string   "street"
    t.string   "detail"
    t.boolean  "state",       default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "province_id"
    t.integer  "city_id"
    t.integer  "area_id"
    t.integer  "street_id"
    t.string   "bussiness"
    t.integer  "room_id"
  end

  add_index "addresses", ["city"], name: "index_addresses_on_city", using: :btree

  create_table "admin_links", force: true do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_logs", force: true do |t|
    t.integer  "admin_id"
    t.string   "ip"
    t.string   "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_statistics", force: true do |t|
    t.string   "category"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "admin_statistics", ["category"], name: "index_admin_statistics_on_category", using: :btree
  add_index "admin_statistics", ["created_at"], name: "index_admin_statistics_on_created_at", using: :btree

  create_table "admins", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "nickname"
    t.string   "phone"
    t.boolean  "is_super"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "areas", force: true do |t|
    t.string  "name"
    t.integer "level"
    t.integer "upid"
    t.integer "usetype"
    t.integer "displayorder"
    t.decimal "latitude",     precision: 20, scale: 17
    t.decimal "longitude",    precision: 20, scale: 17
  end

  add_index "areas", ["name"], name: "index_areas_on_name", using: :btree

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tag"
  end

  create_table "bulletins", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: true do |t|
    t.string   "level"
    t.integer  "per_km"
    t.integer  "per_hour"
    t.integer  "capacity"
    t.integer  "pick_initiate"
    t.integer  "send_initiate"
    t.string   "city"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "click_tops", force: true do |t|
    t.integer  "user_id"
    t.integer  "monthly"
    t.integer  "totally"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "click_tops", ["monthly"], name: "index_click_tops_on_monthly", using: :btree
  add_index "click_tops", ["totally"], name: "index_click_tops_on_totally", using: :btree
  add_index "click_tops", ["user_id"], name: "index_click_tops_on_user_id", using: :btree

  create_table "clicks", force: true do |t|
    t.integer  "user_id"
    t.string   "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "room_id"
  end

  add_index "clicks", ["room_id"], name: "index_clicks_on_room_id", using: :btree
  add_index "clicks", ["user_id"], name: "index_clicks_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.string   "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "star"
  end

  add_index "comments", ["context"], name: "index_comments_on_context", using: :btree
  add_index "comments", ["room_id"], name: "index_comments_on_room_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "username"
    t.string   "content"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "contact_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "room_id"
  end

  create_table "contracts", force: true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "level"
    t.date     "start_at"
    t.date     "end_at"
    t.text     "describe"
    t.integer  "state",      default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "contact"
    t.string   "owner_name"
  end

  add_index "contracts", ["end_at"], name: "index_contracts_on_end_at", using: :btree
  add_index "contracts", ["owner_id"], name: "index_contracts_on_owner_id", using: :btree
  add_index "contracts", ["start_at"], name: "index_contracts_on_start_at", using: :btree

  create_table "convenients", force: true do |t|
    t.boolean  "dianshi",    default: false
    t.boolean  "nuanqi",     default: false
    t.boolean  "zaocan",     default: false
    t.boolean  "youxian",    default: false
    t.boolean  "chufang",    default: false
    t.boolean  "youyong",    default: false
    t.boolean  "bingxiang",  default: false
    t.boolean  "canju",      default: false
    t.boolean  "jianshen",   default: false
    t.boolean  "xiyiji",     default: false
    t.boolean  "smoking",    default: false
    t.boolean  "dianti",     default: false
    t.boolean  "kongtiao",   default: false
    t.boolean  "shangwang",  default: false
    t.boolean  "wuzhangai",  default: false
    t.boolean  "reshui",     default: false
    t.boolean  "wuxian",     default: false
    t.boolean  "baoan",      default: false
    t.boolean  "linyu",      default: false
    t.boolean  "huodong",    default: false
    t.boolean  "menjin",     default: false
    t.boolean  "chewei",     default: false
    t.boolean  "chaoshi",    default: false
    t.boolean  "chongwu",    default: false
    t.boolean  "yinhang",    default: false
    t.integer  "room_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "wangluo",    default: false
    t.boolean  "duwei",      default: false
    t.boolean  "pos",        default: false
    t.boolean  "receipt",    default: false
    t.boolean  "english",    default: false
    t.boolean  "daigou",     default: false
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0
    t.integer  "attempts",   default: 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "helps", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: true do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: true do |t|
    t.string   "locate"
    t.string   "spell"
    t.string   "displaypath"
    t.integer  "category_id"
    t.decimal  "latitude",    precision: 20, scale: 17
    t.decimal  "longitude",   precision: 20, scale: 17
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "city_id"
    t.integer  "hot",                                   default: 0
  end

  add_index "locations", ["displaypath"], name: "index_locations_on_displaypath", using: :btree
  add_index "locations", ["locate"], name: "index_locations_on_locate", using: :btree
  add_index "locations", ["spell"], name: "index_locations_on_spell", using: :btree

  create_table "notifications", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "traveller_id"
    t.integer  "owner_id"
    t.integer  "order_id"
    t.string   "order_num"
    t.boolean  "read_flag",    default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "notifications", ["order_num"], name: "index_notifications_on_order_num", using: :btree
  add_index "notifications", ["owner_id"], name: "index_notifications_on_owner_id", using: :btree
  add_index "notifications", ["read_flag"], name: "index_notifications_on_read_flag", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.date     "order_from"
    t.date     "order_to"
    t.string   "email"
    t.string   "mobile"
    t.float    "price"
    t.integer  "custom_num"
    t.integer  "during"
    t.integer  "owner_id"
    t.string   "username"
    t.string   "order_number"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "descript"
    t.string   "state",        default: "pending"
    t.float    "total",        default: 0.0
    t.string   "check_at"
    t.string   "random_code"
    t.float    "init_total"
    t.float    "paypal",       default: 0.0
    t.integer  "rent_id"
  end

  add_index "orders", ["room_id"], name: "index_orders_on_room_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "panics", force: true do |t|
    t.integer  "room_id"
    t.string   "photo"
    t.datetime "deleted_at"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "position"
    t.string   "image_size"
    t.string   "active_start_time"
    t.string   "active_end_time"
    t.integer  "period",            default: 1
    t.boolean  "reward",            default: false
    t.string   "title"
  end

  create_table "pay_accounts", force: true do |t|
    t.integer  "user_id"
    t.integer  "typee"
    t.string   "account"
    t.string   "pay_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "bank"
    t.string   "alipay_name"
    t.string   "alipay_account"
  end

  add_index "pay_accounts", ["account"], name: "index_pay_accounts_on_account", using: :btree
  add_index "pay_accounts", ["pay_number"], name: "index_pay_accounts_on_pay_number", using: :btree
  add_index "pay_accounts", ["user_id"], name: "index_pay_accounts_on_user_id", using: :btree

  create_table "payments", force: true do |t|
    t.integer  "order_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "payments", ["order_id"], name: "index_payments_on_order_id", using: :btree

  create_table "pins", force: true do |t|
    t.integer  "room_id"
    t.integer  "rank"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
  end

  add_index "pins", ["city"], name: "index_pins_on_city", using: :btree
  add_index "pins", ["rank"], name: "index_pins_on_rank", using: :btree
  add_index "pins", ["room_id"], name: "index_pins_on_room_id", using: :btree

  create_table "prices", force: true do |t|
    t.float    "day_price"
    t.float    "week_price"
    t.float    "month_price"
    t.integer  "room_id"
    t.integer  "state"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "price_type"
    t.date     "special_from"
    t.date     "special_to"
    t.boolean  "special",      default: false
  end

  create_table "purchases", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.string   "order_number"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "win",          default: false
    t.integer  "panic_id"
    t.integer  "period"
  end

  add_index "purchases", ["room_id"], name: "index_purchases_on_room_id", using: :btree
  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id", using: :btree

  create_table "recommends", force: true do |t|
    t.integer  "room_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  add_index "recommends", ["room_id"], name: "index_recommends_on_room_id", using: :btree

  create_table "rents", force: true do |t|
    t.integer  "car_id"
    t.string   "rent_type"
    t.string   "passenger_name"
    t.string   "passenger_phone"
    t.integer  "passenger_counts"
    t.string   "passenger_remark"
    t.string   "departure"
    t.string   "departure_detail"
    t.datetime "departure_at"
    t.integer  "duration"
    t.integer  "distance"
    t.string   "flight_no"
    t.string   "signage_text"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.float    "price"
    t.boolean  "confirmed"
  end

  create_table "rooms", force: true do |t|
    t.string   "title"
    t.string   "home_type"
    t.string   "room_type"
    t.string   "hire_type"
    t.integer  "bed_num"
    t.string   "bed_type"
    t.integer  "custom_num"
    t.float    "room_area"
    t.integer  "washroom"
    t.integer  "room_step",                                   default: 3
    t.integer  "all_step",                                    default: 6
    t.boolean  "receipt",                                     default: false
    t.text     "detail"
    t.text     "address_flag"
    t.text     "traffic"
    t.text     "life_assort"
    t.text     "scenery"
    t.text     "other_desc"
    t.integer  "state",                                       default: 0
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.decimal  "latitude",          precision: 20, scale: 17
    t.decimal  "longitude",         precision: 20, scale: 17
    t.integer  "user_id"
    t.text     "check_desc"
    t.integer  "priority",                                    default: 100
    t.integer  "comments_count",                              default: 0
    t.integer  "screenshots_count",                           default: 0
    t.integer  "room_type_count",                             default: 1
    t.integer  "orders_count",                                default: 0
    t.datetime "check_at"
    t.integer  "score",                                       default: 0
    t.boolean  "available",                                   default: true
    t.string   "room_number"
    t.boolean  "elite"
    t.boolean  "tspecial"
    t.boolean  "undercarriage",                               default: false
    t.integer  "category_id"
    t.integer  "room_number_no"
  end

  create_table "screenshots", force: true do |t|
    t.integer  "room_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "photo"
    t.integer  "position"
    t.string   "remote_photo_url"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "shop_visits", force: true do |t|
    t.integer "owner_id"
    t.integer "visit_count", default: 0
    t.date    "visit_date"
  end

  add_index "shop_visits", ["owner_id"], name: "index_shop_visits_on_owner_id", using: :btree
  add_index "shop_visits", ["visit_date"], name: "index_shop_visits_on_visit_date", using: :btree

  create_table "shops", force: true do |t|
    t.integer  "user_id"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
  end

  add_index "shops", ["user_id"], name: "index_shops_on_user_id", using: :btree

  create_table "sipaians", force: true do |t|
    t.string   "room_id"
    t.string   "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sipaians", ["day"], name: "index_sipaians_on_day", using: :btree
  add_index "sipaians", ["room_id"], name: "index_sipaians_on_room_id", using: :btree

  create_table "specials", force: true do |t|
    t.integer  "room_id"
    t.date     "special_date"
    t.string   "special_time"
    t.float    "price"
    t.integer  "special_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "specials", ["room_id"], name: "index_specials_on_room_id", using: :btree
  add_index "specials", ["special_date"], name: "index_specials_on_special_date", using: :btree
  add_index "specials", ["special_time"], name: "index_specials_on_special_time", using: :btree

  create_table "stores", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stores", ["room_id"], name: "index_stores_on_room_id", using: :btree
  add_index "stores", ["user_id"], name: "index_stores_on_user_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string "title"
    t.string "room_ids"
  end

  create_table "time_specials", force: true do |t|
    t.integer  "room_id"
    t.datetime "time_from"
    t.datetime "time_to"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "truename"
    t.string   "email"
    t.string   "password_digest"
    t.string   "mobile"
    t.string   "role",                   default: "owner"
    t.boolean  "state",                  default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "avatar"
    t.text     "descript"
    t.string   "qq"
    t.string   "auth_token"
    t.integer  "rooms_count",            default: 0
    t.integer  "orders_count",           default: 0
    t.string   "order_phone"
    t.string   "license_photo"
    t.boolean  "hygiene",                default: false
    t.boolean  "safe",                   default: false
    t.boolean  "check_safe",             default: false
    t.text     "check_safe_desc"
    t.string   "license_photo2"
    t.string   "company_license_photo"
    t.integer  "stores_count",           default: 0
    t.string   "shop_name"
    t.string   "regist_from"
    t.string   "ip"
    t.integer  "points"
    t.integer  "refer"
    t.date     "birthday"
    t.string   "style"
    t.string   "shop_url"
    t.float    "sum_paypal",             default: 0.0
    t.string   "remote_avatar_url"
    t.boolean  "joining",                default: false
    t.integer  "exts"
    t.string   "remember_token"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "visits", force: true do |t|
    t.integer  "room_id"
    t.datetime "count_step"
    t.integer  "counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "visits", ["count_step"], name: "index_visits_on_count_step", using: :btree
  add_index "visits", ["counter"], name: "index_visits_on_counter", using: :btree
  add_index "visits", ["room_id"], name: "index_visits_on_room_id", using: :btree
  add_index "visits", ["user_id"], name: "index_visits_on_user_id", using: :btree

end
