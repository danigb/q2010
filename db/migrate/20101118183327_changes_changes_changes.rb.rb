class ChangesChangesChanges < ActiveRecord::Migration
  def self.up
    rename_column :survey_tumismas, :since, :relation_other
    add_column :survey_tumismas, :relation_producer, :boolean
    add_column :survey_tumismas, :relation_consumer, :boolean
    add_column :survey_tumismas, :relation, :text
    add_column :survey_tumismas, :whatsculture, :text
    add_column :survey_tumismas, :isdifferent_other, :text
    add_column :survey_tumismas, :proj_good_media, :text
    add_column :survey_tumismas, :proj_bad_media, :text
    SurveyTumisma::TRAJECT_EVAL.each do |topic|
      add_column :survey_tumismas, "imposed_eval_#{topic}", :string, :limit => 16
    end
    add_column :survey_tumismas, "imposed_eval_desc", :text

    add_column :survey_experiencias, :howlearn, :text
    add_column :survey_dineros, :ajob_decision_other, :text
    add_column :survey_dineros, :lot_of_work, :text
    add_column :survey_dineros, :money_to_family, :text

    add_column :survey_habitats, :culture_infra_calle, :boolean, :default => false
    add_column :survey_habitats, :culture_infra_bares, :boolean, :default => false
    add_column :survey_habitats, :culture_infra_parques, :boolean, :default => false
    add_column :survey_habitats, :culture_infra_other, :text
    add_column :survey_habitats, :comida, :string, :limit => 512
    add_column :survey_habitats, :formacion, :string, :limit => 512
    add_column :survey_habitats, :indumentaria, :string, :limit => 512
    add_column :survey_habitats, :travel_desc, :text

    add_column :survey_reds, :tools, :string, :limit => 4
    add_column :survey_reds, :nets_other, :text
    add_column :survey_reds, :distribution_other, :text

    add_column :survey_comuns, :quality_other, :text

  end

  def self.down

  end
end
