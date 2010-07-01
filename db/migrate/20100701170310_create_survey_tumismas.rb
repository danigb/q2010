class CreateSurveyTumismas < ActiveRecord::Migration
  def self.up
    create_table :survey_tumismas do |t|
      t.references :user

      t.string :birth, :limit => 100
      t.string :gender, :limit => 100
      t.string :since, :limit => 100
      t.text :books
      t.text :films
      t.text :musics
      t.text :movements
      t.text :influences
      t.text :ilike
      t.text :dislike
      t.string :isdifferent, :limit => 8
      t.text :isdifferent_desc
      t.text :proj_good
      t.string :proj_good_att, :limit => 32
      t.text :proj_bad
      t.string :proj_bad_att, :limit => 32
      t.text :diffusion

      SurveyTumisma::TRAJECT_EVAL.each do |topic|
        t.string "traject_eval_#{topic}", :limit => 16
      end

      t.string :traject_eval, :limit => 16
      t.text :traject_eval_desc
      t.string :gender_influence, :limit => 8
      t.text :gender_influence_desc
      t.timestamps
    end
  end

  def self.down
    drop_table :survey_tumismas
  end
end
