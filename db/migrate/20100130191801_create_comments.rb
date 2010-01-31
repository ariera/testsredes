class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.column :title,   :text
      t.column :question_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
