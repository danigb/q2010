class CreateSurveyHabitats < ActiveRecord::Migration
  def self.up
    create_table :survey_habitats do |t|
      t.string :place, :limit => 32
      t.text :place_desc
      t.text :city_work
      SurveyHabitat::CULTURE_INFRA.each do |topic|
        t.boolean "culture_infra_#{topic}", :default => false
      end
      t.text :culture_infra_work
      t.string :homes, :limit => 32
      t.string :living, :limit => 32
      t.text :living_desc
      t.text :living_share
      t.string :home_cost, :limit => 32
      t.string :studio, :limit => 32
      t.text :studio_other
      t.string :studio_share, :limit => 32
      t.text :studio_share_desc
      t.string :studio_cost, :limit => 32
      SurveyHabitat::EXPENSES.each do |expenses|
        t.string expenses, :limit => 512
      end
      t.string :travel, :limit => 32
      t.string :income, :limit => 32
      t.timestamps
    end
  end

  def self.down
    drop_table :survey_habitats
  end
end
