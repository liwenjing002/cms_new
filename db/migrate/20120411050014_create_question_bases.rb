class CreateQuestionBases < ActiveRecord::Migration
  def self.up
    create_table :question_bases do |t|
      t.string :chind_name
      t.boolean :child_sex
      t.integer :child_age
      t.string :child_guardian
      t.string :child_time
      t.string :child_interest
      t.text :child_evaluate
      t.boolean :child_body_ok
      t.text :child_body_msg
      t.text :child_target

      t.timestamps
    end
  end

  def self.down
    drop_table :question_bases
  end
end
