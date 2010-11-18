class LogoPaperclipAndMore < ActiveRecord::Migration
  def self.up
    change_column :survey_presentacions, :page_url, :text
    change_column :survey_presentacions, :icon, :text
    add_column :survey_presentacions, :avatar_file_name,    :string
    add_column :survey_presentacions, :avatar_content_type, :string
    add_column :survey_presentacions, :avatar_file_size,    :integer
    add_column :survey_presentacions, :avatar_updated_at,   :datetime
  end

  def self.down
  end
end
