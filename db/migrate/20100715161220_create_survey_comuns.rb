class CreateSurveyComuns < ActiveRecord::Migration
  def self.up
    create_table :survey_comuns do |t|
      t.references :user

      t.text :institution
      SurveyComun::POLICY.each do |topic|
        t.string "policy_#{topic}", :limit => 8
      end
      SurveyComun::CULTURE_STEPS.each do |topic|
        t.string "culture_steps_#{topic}", :limit => 8
      end
      t.text :situation
      SurveyComun::CULTURE_ACTION.each do |topic|
        t.boolean "culture_action_#{topic}", :default => false
      end
      t.text :culture_action_desc
      SurveyComun::POLIS_ACTION.each do |topic|
        t.boolean "polis_action_#{topic}", :default => false
      end
      t.text :polis_action_desc
      t.string :conditions, :limit => 32
      SurveyComun::ADMINISTRATION.each do |topic|
        t.string "administration_#{topic}", :limit => 16
      end
      SurveyComun::FUTURE.each do |topic|
        t.boolean "future_#{topic}", :default => false
      end
      t.text :future_desc
      t.text :proposal

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_comuns
  end
end
