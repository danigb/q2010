class CreateSurveyPresentacions < ActiveRecord::Migration
  def self.up
    create_table :survey_presentacions do |t|
      t.references :user
      t.string :name, :limit => 256
      t.string :page_url, :limit => 256
      t.string :icon, :limit => 256
      t.string :location, :limit => 256
      t.string :icon, :limit => 16
      t.string :indi_colective, :limit => 16
      SurveyPresentacion::AMBITOS.each do |name|
        t.boolean "activity_#{name}", :default => false
        t.string name, :limit => 256
      end
      t.string :interest, :limit => 1024

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_presentacions
  end
end
