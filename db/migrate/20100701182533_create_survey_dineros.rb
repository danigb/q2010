class CreateSurveyDineros < ActiveRecord::Migration
  def self.up
    create_table :survey_dineros do |t|
      t.references :user

      t.boolean :laboral_entrepreneur
      t.boolean :laboral_employe
      t.boolean :laboral_various
      t.boolean :laboral_one
      t.boolean :laboral_black
      t.text :laboral_others
      t.string :ajob, :limit => 8
      t.string :ajob_time, :limit => 8
      SurveyDinero::AJOB_XTRA.each do |topic|
        t.string "ajob_xtra_#{topic}", :limit => 16
      end
      t.string :ajob_xtra_paid, :limit => 16
      t.string :ajob_money, :limit => 16
      t.string :ajob_decision, :limit => 16
      t.text :gestation
      t.string :ajob_vocation, :limit => 8
      SurveyDinero::AJOB_VOCATION_MONEY.each do |topic|
        t.boolean "ajob_vocation_money_#{topic}"
      end
      t.text :ajob_vocation_money_desc
      t.string :grants, :limit => 8
      t.text :grants_who
      SurveyDinero::GRANTS_BAD.each do |topic|
        t.boolean "grants_bad_#{topic}"
      end
      t.text :grants_bad_desc
      t.string :bjob, :limit => 8
      t.text :bjob_which
      t.string :bjob_time, :limit => 16
      t.string :bjob_money, :limit => 16

      t.timestamps
    end
  end

  def self.down
    drop_table :survey_dineros
  end
end
