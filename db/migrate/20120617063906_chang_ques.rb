class ChangQues < ActiveRecord::Migration
  def self.up
  	add_column :question_details,:num,:integer
  end

  def self.down
  end
end
