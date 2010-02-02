class CreateNotifications < ActiveRecord::Migration
  def self.up
    create_table :notifications do |t|
      t.column :event,   :text
      t.column :question_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :notifications
  end
end
