class CreateSurveyHabitats < ActiveRecord::Migration
  def self.up
    create_table :survey_habitats do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_habitats
  end
end
