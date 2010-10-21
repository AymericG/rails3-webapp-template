class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.text :text
      t.string :from_email

      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
