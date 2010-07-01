class CreateSurveyExperiencias < ActiveRecord::Migration
  def self.up
    create_table :survey_experiencias do |t|
      
      t.string :studies, :limit => 32

      SurveyExperiencia::STUDY_CYCLES.each do |name|
        t.boolean name
      end

      SurveyExperiencia::STUDIES.each do |topic|
        t.string "studies_eval_#{topic}", :limit => 4
      end
      t.text :studies_eval_desc
      t.string :formation, :limit => 4
      t.text :formation_desc
      t.boolean :formation_kind_course
      t.boolean :formation_kind_exchange
      t.boolean :formation_kind_auto
      t.boolean :formation_kind_net
      t.text :formation_kind_desc
      SurveyExperiencia::FORMATION.each do |topic|
        1.upto(5) do |number|
          t.string  "formation_done_#{topic}_#{number}", :limit => 32
        end
      end
      t.string :formation_week, :limit => 8
      t.text :formation_week_desc
      t.string :formation_paid_company, :limit => 16
      t.string :formation_paid_grant, :limit => 16
      t.string :formation_paid_client, :limit => 16
      t.string :formation_paid_not, :limit => 16
      t.string :formation_part, :limit => 8
      SurveyExperiencia::FORMATION_ACCESS.each do |topic|
        t.string "form_access_#{topic}"
      end
      t.text :form_access_desc
      t.text :formation_love

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_experiencias
  end
end
