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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120423110407) do

  create_table "adds", :force => true do |t|
    t.string   "name"
    t.integer  "picture_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "applies", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "qq"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "context"
    t.integer  "user_id"
    t.integer  "read_num"
    t.integer  "modi_user"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "first_forum_id"
    t.integer  "picture_id"
    t.integer  "forum_id"
    t.string   "author"
    t.integer  "page_temp_id"
    t.text     "picture1"
    t.string   "small_title"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_fingerprint"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "course_types", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.integer  "type_id"
    t.string   "age_range"
    t.string   "name"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page_temp_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.integer  "father_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_num"
    t.string   "code"
    t.integer  "page_temp_id"
    t.text     "picture1"
    t.text     "picture2"
    t.text     "picture3"
  end

  create_table "friend_links", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kindeditor_images", :force => true do |t|
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_temps", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "temp_type"
    t.boolean  "is_acticity"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_bases", :force => true do |t|
    t.string   "chind_name"
    t.boolean  "child_sex"
    t.integer  "child_age"
    t.string   "child_guardian"
    t.string   "child_time"
    t.string   "child_interest"
    t.text     "child_evaluate"
    t.boolean  "child_body_ok"
    t.text     "child_body_msg"
    t.text     "child_target"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_categories", :force => true do |t|
    t.string   "question_id"
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_details", :force => true do |t|
    t.integer  "question_category_id"
    t.text     "name"
    t.boolean  "count"
    t.string   "a_secect"
    t.string   "b_secect"
    t.string   "c_secect"
    t.string   "d_secect"
    t.string   "e_secect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_result_details", :force => true do |t|
    t.integer  "question_detail_id"
    t.integer  "question_result_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_results", :force => true do |t|
    t.integer  "question_base_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "flage"
  end

  create_table "use_permissions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "web_infos", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "qq"
    t.string   "wanwan"
    t.string   "weibo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
