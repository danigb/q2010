class CreateSurveyReds < ActiveRecord::Migration
  def self.up
    create_table :survey_reds do |t|
      t.references :user

      t.string :computer, :limit => 16
      t.string :operating, :limit => 32
      t.text :operating_desc
      SurveyRed::INTERNET.each do |topic|
        t.boolean "internet_#{topic}", :default => false
      end
      t.text :internet_desc
      t.string :internet_time, :limit => 32
      t.text :web_links
      t.string :p2p, :limit => 32
      t.string :access, :limit => 32
      t.string :web_find, :limit => 32

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_reds
  end
end
