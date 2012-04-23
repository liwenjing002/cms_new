class CreateQuestionResultDetails < ActiveRecord::Migration
  def self.up
    create_table :question_result_details do |t|
      t.integer :question_detail_id
      t.integer :question_result_id
      t.integer :answer_id
      t.timestamps
    end
  end

  def self.down
    drop_table :question_result_details
  end
end
