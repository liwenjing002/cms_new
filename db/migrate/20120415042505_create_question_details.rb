class CreateQuestionDetails < ActiveRecord::Migration
  def self.up
    create_table :question_details do |t|
      t.integer :question_category_id
      t.text :name
      t.boolean :count
      t.string :a_secect
      t.string :b_secect
      t.string :c_secect
      t.string :d_secect
      t.string :e_secect

      t.timestamps
    end
  end

  def self.down
    drop_table :question_details
  end
end
