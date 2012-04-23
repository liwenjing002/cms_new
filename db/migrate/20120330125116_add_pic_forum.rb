class AddPicForum < ActiveRecord::Migration
  def self.up
  	add_column :forums,:picture1_id,:integer
  	add_column :forums,:picture2_id,:integer
  	add_column :forums,:picture3_id,:integer
  end

  def self.down
  end
end
