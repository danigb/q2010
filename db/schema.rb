# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100701170310) do

  create_table "feedbacks", :force => true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_presentacions", :force => true do |t|
    t.integer  "user_id"
    t.string   "name",                            :limit => 256
    t.string   "page_url",                        :limit => 256
    t.string   "icon",                            :limit => 16
    t.string   "location",                        :limit => 256
    t.string   "indi_colective",                  :limit => 16
    t.boolean  "activity_actividad_arquitectura",                 :default => false
    t.string   "actividad_arquitectura",          :limit => 256
    t.boolean  "activity_actividad_plasticas",                    :default => false
    t.string   "actividad_plasticas",             :limit => 256
    t.boolean  "activity_actividad_cine",                         :default => false
    t.string   "actividad_cine",                  :limit => 256
    t.boolean  "activity_actividad_comic",                        :default => false
    t.string   "actividad_comic",                 :limit => 256
    t.boolean  "activity_actividad_danza",                        :default => false
    t.string   "actividad_danza",                 :limit => 256
    t.boolean  "activity_actividad_diseño",                      :default => false
    t.string   "actividad_diseño",               :limit => 256
    t.boolean  "activity_actividad_docencia",                     :default => false
    t.string   "actividad_docencia",              :limit => 256
    t.boolean  "activity_actividad_fotografia",                   :default => false
    t.string   "actividad_fotografia",            :limit => 256
    t.boolean  "activity_actividad_gestion",                      :default => false
    t.string   "actividad_gestion",               :limit => 256
    t.boolean  "activity_actividad_literatura",                   :default => false
    t.string   "actividad_literatura",            :limit => 256
    t.boolean  "activity_actividad_musica",                       :default => false
    t.string   "actividad_musica",                :limit => 256
    t.boolean  "activity_actividad_programacion",                 :default => false
    t.string   "actividad_programacion",          :limit => 256
    t.boolean  "activity_actividad_netart",                       :default => false
    t.string   "actividad_netart",                :limit => 256
    t.boolean  "activity_actividad_performance",                  :default => false
    t.string   "actividad_performance",           :limit => 256
    t.boolean  "activity_actividad_street",                       :default => false
    t.string   "actividad_street",                :limit => 256
    t.boolean  "activity_actividad_teatro",                       :default => false
    t.string   "actividad_teatro",                :limit => 256
    t.boolean  "activity_actividad_otros",                        :default => false
    t.string   "actividad_otros",                 :limit => 256
    t.string   "interest",                        :limit => 1024
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_tumismas", :force => true do |t|
    t.string   "birth",                  :limit => 100
    t.string   "gender",                 :limit => 100
    t.string   "since",                  :limit => 100
    t.text     "books"
    t.text     "films"
    t.text     "musics"
    t.text     "movements"
    t.text     "influences"
    t.text     "ilike"
    t.text     "dislike"
    t.string   "isdifferent",            :limit => 8
    t.text     "isdifferent_desc"
    t.text     "proj_good"
    t.string   "proj_good_att",          :limit => 32
    t.text     "proj_bad"
    t.string   "proj_bad_att",           :limit => 32
    t.text     "diffusion"
    t.string   "traject_eval_talent",    :limit => 16
    t.string   "traject_eval_knowledge", :limit => 16
    t.string   "traject_eval_relations", :limit => 16
    t.string   "traject_eval_fame",      :limit => 16
    t.string   "traject_eval_money",     :limit => 16
    t.string   "traject_eval_marketing", :limit => 16
    t.string   "traject_eval_gender",    :limit => 16
    t.string   "traject_eval",           :limit => 16
    t.text     "traject_eval_desc"
    t.string   "gender_influence",       :limit => 8
    t.text     "gender_influence_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                             :null => false
    t.string   "email",                                :null => false
    t.string   "password",                             :null => false
    t.string   "crypted_password",                     :null => false
    t.string   "password_salt",                        :null => false
    t.string   "persistence_token",                    :null => false
    t.boolean  "survey_completed",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
