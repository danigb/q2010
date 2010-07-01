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

ActiveRecord::Schema.define(:version => 20100701182533) do

  create_table "feedbacks", :force => true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_dineros", :force => true do |t|
    t.boolean  "laboral_entrepreneur"
    t.boolean  "laboral_employe"
    t.boolean  "laboral_various"
    t.boolean  "laboral_one"
    t.boolean  "laboral_black"
    t.text     "laboral_others"
    t.string   "ajob",                        :limit => 8
    t.string   "ajob_time",                   :limit => 8
    t.string   "ajob_xtra_night",             :limit => 16
    t.string   "ajob_xtra_holiday",           :limit => 16
    t.string   "ajob_xtra_overtime",          :limit => 16
    t.string   "ajob_xtra_paid",              :limit => 16
    t.string   "ajob_money",                  :limit => 16
    t.string   "ajob_decision",               :limit => 16
    t.text     "gestation"
    t.string   "ajob_vocation",               :limit => 8
    t.boolean  "ajob_vocation_money_family"
    t.boolean  "ajob_vocation_money_work"
    t.boolean  "ajob_vocation_money_grant"
    t.boolean  "ajob_vocation_money_sponsor"
    t.boolean  "ajob_vocation_money_sale"
    t.text     "ajob_vocation_money_desc"
    t.string   "grants",                      :limit => 8
    t.text     "grants_who"
    t.boolean  "grants_bad_grantpoor"
    t.boolean  "grants_bad_grantoffer"
    t.boolean  "grants_bad_grantcriteria"
    t.boolean  "grants_bad_grantinfo"
    t.boolean  "grants_bad_granttime"
    t.boolean  "grants_bad_grantgeo"
    t.boolean  "grants_bad_grantage"
    t.text     "grants_bad_desc"
    t.string   "bjob",                        :limit => 8
    t.text     "bjob_which"
    t.string   "bjob_time",                   :limit => 16
    t.string   "bjob_money",                  :limit => 16
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_experiencias", :force => true do |t|
    t.string   "studies",                     :limit => 32
    t.boolean  "studies_eso"
    t.boolean  "studies_bachiller"
    t.boolean  "studies_fp_medio"
    t.boolean  "studies_fp_superior"
    t.boolean  "studies_uni_completa"
    t.boolean  "studies_uni_incompleta"
    t.boolean  "studies_postgrado"
    t.boolean  "studies_doctorado"
    t.string   "studies_eval_academica",      :limit => 4
    t.string   "studies_eval_transmision",    :limit => 4
    t.string   "studies_eval_talleres",       :limit => 4
    t.string   "studies_eval_empleo",         :limit => 4
    t.string   "studies_eval_aprendizaje",    :limit => 4
    t.string   "studies_eval_internet",       :limit => 4
    t.string   "studies_eval_biblioteca",     :limit => 4
    t.text     "studies_eval_desc"
    t.string   "formation",                   :limit => 4
    t.text     "formation_desc"
    t.boolean  "formation_kind_course"
    t.boolean  "formation_kind_exchange"
    t.boolean  "formation_kind_auto"
    t.boolean  "formation_kind_net"
    t.text     "formation_kind_desc"
    t.string   "formation_done_name_1",       :limit => 32
    t.string   "formation_done_name_2",       :limit => 32
    t.string   "formation_done_name_3",       :limit => 32
    t.string   "formation_done_name_4",       :limit => 32
    t.string   "formation_done_name_5",       :limit => 32
    t.string   "formation_done_duration_1",   :limit => 32
    t.string   "formation_done_duration_2",   :limit => 32
    t.string   "formation_done_duration_3",   :limit => 32
    t.string   "formation_done_duration_4",   :limit => 32
    t.string   "formation_done_duration_5",   :limit => 32
    t.string   "formation_done_entity_1",     :limit => 32
    t.string   "formation_done_entity_2",     :limit => 32
    t.string   "formation_done_entity_3",     :limit => 32
    t.string   "formation_done_entity_4",     :limit => 32
    t.string   "formation_done_entity_5",     :limit => 32
    t.string   "formation_done_amount_1",     :limit => 32
    t.string   "formation_done_amount_2",     :limit => 32
    t.string   "formation_done_amount_3",     :limit => 32
    t.string   "formation_done_amount_4",     :limit => 32
    t.string   "formation_done_amount_5",     :limit => 32
    t.string   "formation_done_evaluation_1", :limit => 32
    t.string   "formation_done_evaluation_2", :limit => 32
    t.string   "formation_done_evaluation_3", :limit => 32
    t.string   "formation_done_evaluation_4", :limit => 32
    t.string   "formation_done_evaluation_5", :limit => 32
    t.string   "formation_week",              :limit => 8
    t.text     "formation_week_desc"
    t.string   "formation_paid_company",      :limit => 16
    t.string   "formation_paid_grant",        :limit => 16
    t.string   "formation_paid_client",       :limit => 16
    t.string   "formation_paid_not",          :limit => 16
    t.string   "formation_part",              :limit => 8
    t.string   "form_access_money"
    t.string   "form_access_offer"
    t.string   "form_access_info"
    t.string   "form_access_time"
    t.string   "form_access_geo"
    t.text     "form_access_desc"
    t.text     "formation_love"
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
