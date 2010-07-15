class CreateSurveyAutorias < ActiveRecord::Migration
  def self.up
    create_table :survey_autorias do |t|
      SurveyAutoria::AUTHORS.each do |topic|
        t.boolean "author_#{topic}", :default => false
      end
      t.text :author_desc
      t.text :copyright_why
      t.text :cc
      t.text :cc_desc
      t.boolean :author_asoc
      t.text :author_asoc_desc
      t.text :author_asoc_why

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_autorias
  end
end
