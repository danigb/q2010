class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :category
      t.string :description
      t.string :url
      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
