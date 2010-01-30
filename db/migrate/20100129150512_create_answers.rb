class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.column :title,   :string
      t.column :correct, :bool
      t.column :question_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
