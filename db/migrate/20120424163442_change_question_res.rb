class ChangeQuestionRes < ActiveRecord::Migration
  def self.up
  	add_column :question_result_details,:answer_num,:integer
  end

  def self.down
  end
end
